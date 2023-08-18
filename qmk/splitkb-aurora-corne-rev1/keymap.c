#include QMK_KEYBOARD_H

enum layers {
    _ALPHA = 0,
    _SYMBOLS = 1,
    _FUNCTION = 2
};

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    [_ALPHA] = LAYOUT_split_3x6_3(
        KC_EQL, KC_Q, KC_W, KC_E, KC_R, KC_T, KC_Y, KC_U, KC_I, KC_O, KC_P, KC_PIPE,
        KC_ESC, LALT_T(KC_A), LGUI_T(KC_S), LCTL_T(KC_D), LSFT_T(KC_F), KC_G, KC_H, RSFT_T(KC_J), RCTL_T(KC_K), RGUI_T(KC_L), RALT_T(KC_SCLN), KC_QUOT,
        KC_TAB, LT(2, KC_Z), KC_X, KC_C, KC_V, KC_B, KC_N, KC_M, KC_COMM, KC_DOT, LT(2, KC_SLSH), KC_BSPC,
        KC_LEFT, KC_RIGHT, LT(1, KC_SPC), LT(1, KC_ENT), KC_UP, KC_DOWN
    ),
    [_SYMBOLS] = LAYOUT_split_3x6_3(
        KC_TRANSPARENT, KC_1, KC_2, KC_3, KC_4, KC_5, KC_6, KC_7, KC_8, KC_9, KC_0, KC_PIPE,
        KC_TRANSPARENT, LALT_T(KC_EQL), LGUI_T(KC_LBRC), LCTL_T(KC_LCBR), LSFT_T(KC_LPRN), KC_ASTR, KC_MINS, RSFT_T(KC_RPRN), RCTL_T(KC_RCBR), RGUI_T(KC_RBRC), RALT_T(KC_EXLM), KC_GRV,
        KC_TRANSPARENT, LT(2, KC_AT), KC_PERC, KC_DLR, KC_PLUS, KC_TILD, KC_HASH, KC_AMPR, KC_LT, KC_GT, LT(2, KC_BSLS), KC_TRANSPARENT,
        KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT
    ),
    [_FUNCTION] = LAYOUT_split_3x6_3(
        KC_F1, KC_F2, KC_F3, KC_F4, KC_F5, KC_F6, KC_F7, KC_F8, KC_F9, KC_F10, KC_F11, KC_F12,
        KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_CAPS, KC_TRANSPARENT, KC_TRANSPARENT, KC_CAPS, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT,
        KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT,
        KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT, KC_TRANSPARENT
    )
};

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case LCTL_T(KC_LCBR):
            if (record->tap.count && record->event.pressed) {
                tap_code16(KC_LCBR); // Send KC_DQUO on tap
                return false;        // Return false to ignore further processing of key
            }
            break;
        case LSFT_T(KC_LPRN):
            if (record->tap.count && record->event.pressed) {
                tap_code16(KC_LPRN); // Send KC_DQUO on tap
                return false;        // Return false to ignore further processing of key
            }
            break;
        case RCTL_T(KC_RCBR):
            if (record->tap.count && record->event.pressed) {
                tap_code16(KC_RCBR); // Send KC_DQUO on tap
                return false;        // Return false to ignore further processing of key
            }
            break;
        case RSFT_T(KC_RPRN):
            if (record->tap.count && record->event.pressed) {
                tap_code16(KC_RPRN); // Send KC_DQUO on tap
                return false;        // Return false to ignore further processing of key
            }
            break;
        case RALT_T(KC_EXLM):
            if (record->tap.count && record->event.pressed) {
                tap_code16(KC_EXLM); // Send KC_DQUO on tap
                return false;        // Return false to ignore further processing of key
            }
            break;
    }
    return true;
}
