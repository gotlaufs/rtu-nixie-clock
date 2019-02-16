#include "nixie_driver.h"
#include "hv_ic.h"

#include <SmingCore/SmingCore.h>

static void form_nixie_bytes(nixie_data_type *nixie_data, uint32_t *hv_bits){
    uint8_t i;

    // First, reset everything
    uint32_t hv_1 = 0;
    uint32_t hv_2 = 0;

    // Decode all the bits
    switch (nixie_data->N6){
        case 0: hv_2 |= BIT21; break;//
        case 1: hv_2 |= BIT31; break;//
        case 2: hv_2 |= BIT30; break;//
        case 3: hv_2 |= BIT29; break;//
        case 4: hv_2 |= BIT28; break;//
        case 5: hv_2 |= BIT26; break;//
        case 6: hv_2 |= BIT25; break;//
        case 7: hv_2 |= BIT24; break;//
        case 8: hv_2 |= BIT23; break;//
        case 9: hv_2 |= BIT22; break;//
    }

    switch (nixie_data->N5){
        case 0: hv_2 |= BIT27; break;//
        case 1: hv_2 |= BIT8;  break;//
        case 2: hv_2 |= BIT7;  break;//
        case 3: hv_2 |= BIT6;  break;// 2018-04-13 Disable digits 3&4 on Nixie 5 because of electrical short
        case 4: hv_2 |= BIT5;  break;//
        case 5: hv_2 |= BIT4;  break;//
        case 6: hv_2 |= BIT3;  break;//
        case 7: hv_2 |= BIT2;  break;//
        case 8: hv_2 |= BIT1;  break;//
        case 9: hv_2 |= BIT0;  break;//
    }

    switch (nixie_data->N4){
        case 0: hv_2 |= BIT11; break;//
        case 1: hv_2 |= BIT20; break;//
        case 2: hv_2 |= BIT19; break;//
        case 3: hv_2 |= BIT18; break;//
        case 4: hv_2 |= BIT17; break;//
        case 5: hv_2 |= BIT16; break;//
        case 6: hv_2 |= BIT15; break;//
        case 7: hv_2 |= BIT14; break;//
        case 8: hv_2 |= BIT13; break;//
        case 9: hv_2 |= BIT12; break;//
    }

    switch (nixie_data->N3){
        case 0: hv_1 |= BIT21; break;//
        case 1: hv_1 |= BIT31; break;//
        case 2: hv_1 |= BIT30; break;//
        case 3: hv_1 |= BIT29; break;//
        case 4: hv_1 |= BIT28; break;//
        case 5: hv_1 |= BIT26; break;//
        case 6: hv_1 |= BIT25; break;//
        case 7: hv_1 |= BIT24; break;//
        case 8: hv_1 |= BIT23; break;//
        case 9: hv_1 |= BIT22; break;//
    }

    switch (nixie_data->N2){
        case 0: hv_1 |= BIT1;  break;//
        case 1: hv_1 |= BIT10; break;//
        case 2: hv_1 |= BIT9;  break;//
        case 3: hv_1 |= BIT8;  break;//
        case 4: hv_1 |= BIT7;  break;//
        case 5: hv_1 |= BIT6;  break;//
        case 6: hv_1 |= BIT5;  break;//
        case 7: hv_1 |= BIT4;  break;//
        case 8: hv_1 |= BIT3;  break;//
        case 9: hv_1 |= BIT2;  break;//
    }

    switch (nixie_data->N1){
        case 0: hv_1 |= BIT11; break;//
        case 1: hv_1 |= BIT20; break;//
        case 2: hv_1 |= BIT19; break;//
        case 3: hv_1 |= BIT18; break;//
        case 4: hv_1 |= BIT17; break;//
        case 5: hv_1 |= BIT16; break;//
        case 6: hv_1 |= BIT15; break;//
        case 7: hv_1 |= BIT14; break;//
        case 8: hv_1 |= BIT13; break;//
        case 9: hv_1 |= BIT12; break;//
    }

    if (nixie_data->COLON_1){
        hv_1 |= BIT27;//
    }
    if (nixie_data->DECIMAL_1){
        hv_1 |= BIT0; //
    }

    if (nixie_data->COLON_2){
        hv_2 |= BIT9;//
    }
    if (nixie_data->DECIMAL_2){
        hv_2 |= BIT10;//
    }

    hv_bits[0] = hv_1;
    hv_bits[1] = hv_2;
}

void nixie_update(nixie_data_type *nixie_data){
    int8_t i;
    uint8_t data_byte;
    uint32_t hv_bits[2] = {0, 0};
    form_nixie_bytes(nixie_data, hv_bits);

    // Blank the nixies:
    HV_STATUS = HV_DATA_SHIFT;
    // Wait some time for changes to take effect
    delayMicroseconds(100);

    for (i=3;i>=0;i--){
        data_byte = (hv_bits[1] >> (8*i)) & 0xFF;
        hv_push_byte(data_byte);
    }

    for (i=3;i>=0;i--){
        data_byte = (hv_bits[0] >> (8*i)) & 0xFF;
        hv_push_byte(data_byte);
    }

    HV_STATUS = HV_NORMAL;
}

void nixie_off(void){
    uint8_t i;
    for (i=0; i<8; i++){
        hv_push_byte(0);
    }
}
