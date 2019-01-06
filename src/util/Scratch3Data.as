/*
 * Copyright (c) 2019, Massachusetts Institute of Technology, Dylan Servilla
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 * 
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

package util {

public class Scratch3Data {

    public static const VAR_SCALAR_TYPE:String = '';
    public static const VAR_LIST_TYPE:String = 'list';
    public static const VAR_BROADCAST_MESSAGE_TYPE:String = 'broadcast_msg';

    public static const INPUT_SAME_BLOCK_SHADOW:int = 1; // unobscured shadow
    public static const INPUT_BLOCK_NO_SHADOW:int = 2; // no shadow
    public static const INPUT_DIFF_BLOCK_SHADOW:int = 3; // obscured shadow

    public static const MATH_NUM_PRIMITIVE:int = 4;
    public static const POSITIVE_NUM_PRIMITIVE:int = 5;
    public static const WHOLE_NUM_PRIMITIVE:int = 6;
    public static const INTEGER_NUM_PRIMITIVE:int = 7;
    public static const ANGLE_NUM_PRIMITIVE:int = 8;
    public static const COLOR_PICKER_PRIMITIVE:int = 9;
    public static const TEXT_PRIMITIVE:int = 10;
    public static const BROADCAST_PRIMITIVE:int = 11;
    public static const VAR_PRIMITIVE:int = 12;
    public static const LIST_PRIMITIVE:int = 13;

    public static const specMap = {
        'motion_movesteps': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'STEPS'
                }
            ]
        },
        'motion_turnright': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'DEGREES'
                }
            ]
        },
        'motion_turnleft': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'DEGREES'
                }
            ]
        },
        'motion_pointindirection': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_angle',
                    'inputName': 'DIRECTION'
                }
            ]
        },
        'motion_pointtowards': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'motion_pointtowards_menu',
                    'inputName': 'TOWARDS'
                }
            ]
        },
        'motion_gotoxy': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'X'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'Y'
                }
            ]
        },
        'motion_goto': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'motion_goto_menu',
                    'inputName': 'TO'
                }
            ]
        },
        'motion_glidesecstoxy': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'SECS'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'X'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'Y'
                }
            ]
        },
        'motion_changexby': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'DX'
                }
            ]
        },
        'motion_setx': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'X'
                }
            ]
        },
        'motion_changeyby': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'DY'
                }
            ]
        },
        'motion_sety': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'Y'
                }
            ]
        },
        'motion_ifonedgebounce': {
            'argMap': [
            ]
        },
        'motion_setrotationstyle': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'STYLE'
                }
            ]
        },
        'motion_xposition': {
            'argMap': [
            ]
        },
        'motion_yposition': {
            'argMap': [
            ]
        },
        'motion_direction': {
            'argMap': [
            ]
        },
        'motion_scroll_right': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'DISTANCE'
                }
            ]
        },
        'motion_scroll_up': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'DISTANCE'
                }
            ]
        },
        'motion_align_scene': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'ALIGNMENT'
                }
            ]
        },
        'motion_xscroll': {
            'argMap': [
            ]
        },
        'motion_yscroll': {
            'argMap': [
            ]
        },
        'looks_sayforsecs': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'MESSAGE'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'SECS'
                }
            ]
        },
        'looks_say': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'MESSAGE'
                }
            ]
        },
        'looks_thinkforsecs': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'MESSAGE'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'SECS'
                }
            ]
        },
        'looks_think': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'MESSAGE'
                }
            ]
        },
        'looks_show': {
            'argMap': [
            ]
        },
        'looks_hide': {
            'argMap': [
            ]
        },
        'looks_hideallsprites': {
            'argMap': [
            ]
        },
        'looks_switchcostumeto': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'looks_costume',
                    'inputName': 'COSTUME'
                }
            ]
        },
        'looks_nextcostume': {
            'argMap': [
            ]
        },
        'looks_switchbackdropto': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'looks_backdrops',
                    'inputName': 'BACKDROP'
                }
            ]
        },
        'looks_changeeffectby': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'EFFECT'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'CHANGE'
                }
            ]
        },
        'looks_seteffectto': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'EFFECT'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'VALUE'
                }
            ]
        },
        'looks_cleargraphiceffects': {
            'argMap': [
            ]
        },
        'looks_changesizeby': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'CHANGE'
                }
            ]
        },
        'looks_setsizeto': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'SIZE'
                }
            ]
        },
        'looks_changestretchby': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'CHANGE'
                }
            ]
        },
        'looks_setstretchto': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'STRETCH'
                }
            ]
        },
        'looks_gotofrontback': {
            'argMap': [
            ]
        },
        'looks_goforwardbackwardlayers': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_integer',
                    'inputName': 'NUM'
                }
            ]
        },
        'looks_costumenumbername': {
            'argMap': [
            ]
        },
        'looks_costumenumbername': {
            'argMap': [
            ]
        },
        'looks_backdropnumbername': {
            'argMap': [
            ]
        },
        'looks_size': {
            'argMap': [
            ]
        },
        'looks_switchbackdroptoandwait': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'looks_backdrops',
                    'inputName': 'BACKDROP'
                }
            ]
        },
        'looks_nextbackdrop': {
            'argMap': [
            ]
        },
        'looks_backdropnumbername': {
            'argMap': [
            ]
        },
        'sound_play': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'sound_sounds_menu',
                    'inputName': 'SOUND_MENU'
                }
            ]
        },
        'sound_playuntildone': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'sound_sounds_menu',
                    'inputName': 'SOUND_MENU'
                }
            ]
        },
        'sound_stopallsounds': {
            'argMap': [
            ]
        },
        'music_playDrumForBeats': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'music_menu_DRUM',
                    'inputName': 'DRUM'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'BEATS'
                }
            ]
        },
        'music_restForBeats': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'BEATS'
                }
            ]
        },
        'music_playNoteForBeats': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'note',
                    'inputName': 'NOTE'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'BEATS'
                }
            ]
        },
        'music_setInstrument': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'music_menu_INSTRUMENT',
                    'inputName': 'INSTRUMENT'
                }
            ]
        },
        'music_midiSetInstrument': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'INSTRUMENT'
                }
            ]
        },
        'sound_changevolumeby': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'VOLUME'
                }
            ]
        },
        'sound_setvolumeto': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'VOLUME'
                }
            ]
        },
        'sound_volume': {
            'argMap': [
            ]
        },
        'music_changeTempo': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'TEMPO'
                }
            ]
        },
        'music_setTempo': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'TEMPO'
                }
            ]
        },
        'music_getTempo': {
            'argMap': [
            ]
        },
        'pen_clear': {
            'argMap': [
            ]
        },
        'pen_stamp': {
            'argMap': [
            ]
        },
        'pen_penDown': {
            'argMap': [
            ]
        },
        'pen_penUp': {
            'argMap': [
            ]
        },
        'pen_setPenColorToColor': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'colour_picker',
                    'inputName': 'COLOR'
                }
            ]
        },
        'pen_changePenHueBy': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'HUE'
                }
            ]
        },
        'pen_setPenHueToNumber': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'HUE'
                }
            ]
        },
        'pen_changePenShadeBy': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'SHADE'
                }
            ]
        },
        'pen_setPenShadeToNumber': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'SHADE'
                }
            ]
        },
        'pen_changePenSizeBy': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'SIZE'
                }
            ]
        },
        'pen_setPenSizeTo': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'SIZE'
                }
            ]
        },
        'videoSensing_videoOn': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'videoSensing_menu_ATTRIBUTE',
                    'inputName': 'ATTRIBUTE'
                },
                {
                    'type': 'input',
                    'inputOp': 'videoSensing_menu_SUBJECT',
                    'inputName': 'SUBJECT'
                }
            ]
        },
        'event_whenflagclicked': {
            'argMap': [
            ]
        },
        'event_whenkeypressed': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'KEY_OPTION'
                }
            ]
        },
        'event_whenthisspriteclicked': {
            'argMap': [
            ]
        },
        'event_whenbackdropswitchesto': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'BACKDROP'
                }
            ]
        },
        // 'whenSensorGreaterThan': ([, sensor]) => {
        //     if (sensor === 'video motion') {
        //         return {
        //             'opcode': 'videoSensing_whenMotionGreaterThan',
        //             'argMap': [
        //                 // skip the first arg, since we converted to a video specific sensing block
        //                 {},
        //                 {
        //                     'type': 'input',
        //                     'inputOp': 'math_number',
        //                     'inputName': 'REFERENCE'
        //                 }
        //             ]
        //         };
        //     }
        //     return {
        //         'opcode': 'event_whengreaterthan',
        //         'argMap': [
        //             {
        //                 'type': 'field',
        //                 'fieldName': 'WHENGREATERTHANMENU'
        //             },
        //             {
        //                 'type': 'input',
        //                 'inputOp': 'math_number',
        //                 'inputName': 'VALUE'
        //             }
        //         ]
        //     };
        // },
        'event_whenbroadcastreceived': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'BROADCAST_OPTION',
                    'variableType': Scratch3Data.VAR_BROADCAST_MESSAGE_TYPE
                }
            ]
        },
        'event_broadcast': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'event_broadcast_menu',
                    'inputName': 'BROADCAST_INPUT',
                    'variableType': Scratch3Data.VAR_BROADCAST_MESSAGE_TYPE
                }
            ]
        },
        'event_broadcastandwait': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'event_broadcast_menu',
                    'inputName': 'BROADCAST_INPUT',
                    'variableType': Scratch3Data.VAR_BROADCAST_MESSAGE_TYPE
                }
            ]
        },
        'control_wait': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_positive_number',
                    'inputName': 'DURATION'
                }
            ]
        },
        'control_repeat': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_whole_number',
                    'inputName': 'TIMES'
                },
                {
                    'type': 'input',
                    'inputOp': 'substack',
                    'inputName': 'SUBSTACK'
                }
            ]
        },
        'control_forever': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'substack',
                    'inputName': 'SUBSTACK'
                }
            ]
        },
        'control_if': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'boolean',
                    'inputName': 'CONDITION'
                },
                {
                    'type': 'input',
                    'inputOp': 'substack',
                    'inputName': 'SUBSTACK'
                }
            ]
        },
        'control_if_else': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'boolean',
                    'inputName': 'CONDITION'
                },
                {
                    'type': 'input',
                    'inputOp': 'substack',
                    'inputName': 'SUBSTACK'
                },
                {
                    'type': 'input',
                    'inputOp': 'substack',
                    'inputName': 'SUBSTACK2'
                }
            ]
        },
        'control_wait_until': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'boolean',
                    'inputName': 'CONDITION'
                }
            ]
        },
        'control_repeat_until': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'boolean',
                    'inputName': 'CONDITION'
                },
                {
                    'type': 'input',
                    'inputOp': 'substack',
                    'inputName': 'SUBSTACK'
                }
            ]
        },
        'control_while': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'boolean',
                    'inputName': 'CONDITION'
                },
                {
                    'type': 'input',
                    'inputOp': 'substack',
                    'inputName': 'SUBSTACK'
                }
            ]
        },
        'control_for_each': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'VARIABLE'
                },
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'VALUE'
                },
                {
                    'type': 'input',
                    'inputOp': 'substack',
                    'inputName': 'SUBSTACK'
                }
            ]
        },
        'control_stop': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'STOP_OPTION'
                }
            ]
        },
        'control_start_as_clone': {
            'argMap': [
            ]
        },
        'control_create_clone_of': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'control_create_clone_of_menu',
                    'inputName': 'CLONE_OPTION'
                }
            ]
        },
        'control_delete_this_clone': {
            'argMap': [
            ]
        },
        'control_get_counter': {
            'argMap': [
            ]
        },
        'control_incr_counter': {
            'argMap': [
            ]
        },
        'control_clear_counter': {
            'argMap': [
            ]
        },
        'control_all_at_once': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'substack',
                    'inputName': 'SUBSTACK'
                }
            ]
        },
        'sensing_touchingobject': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'sensing_touchingobjectmenu',
                    'inputName': 'TOUCHINGOBJECTMENU'
                }
            ]
        },
        'sensing_touchingcolor': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'colour_picker',
                    'inputName': 'COLOR'
                }
            ]
        },
        'sensing_coloristouchingcolor': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'colour_picker',
                    'inputName': 'COLOR'
                },
                {
                    'type': 'input',
                    'inputOp': 'colour_picker',
                    'inputName': 'COLOR2'
                }
            ]
        },
        'sensing_distanceto': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'sensing_distancetomenu',
                    'inputName': 'DISTANCETOMENU'
                }
            ]
        },
        'sensing_askandwait': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'QUESTION'
                }
            ]
        },
        'sensing_answer': {
            'argMap': [
            ]
        },
        'sensing_keypressed': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'sensing_keyoptions',
                    'inputName': 'KEY_OPTION'
                }
            ]
        },
        'sensing_mousedown': {
            'argMap': [
            ]
        },
        'sensing_mousex': {
            'argMap': [
            ]
        },
        'sensing_mousey': {
            'argMap': [
            ]
        },
        'sensing_loudness': {
            'argMap': [
            ]
        },
        'sensing_loud': {
            'argMap': [
            ]
        },
        'sensing_videoon': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'sensing_videoonmenuone',
                    'inputName': 'VIDEOONMENU1'
                },
                {
                    'type': 'input',
                    'inputOp': 'sensing_videoonmenutwo',
                    'inputName': 'VIDEOONMENU2'
                }
            ]
        },
        'videoSensing_videoToggle': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'videoSensing_menu_VIDEO_STATE',
                    'inputName': 'VIDEO_STATE'
                }
            ]
        },
        'videoSensing_setVideoTransparency': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'TRANSPARENCY'
                }
            ]
        },
        'sensing_timer': {
            'argMap': [
            ]
        },
        'sensing_resettimer': {
            'argMap': [
            ]
        },
        'sensing_of': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'PROPERTY'
                },
                {
                    'type': 'input',
                    'inputOp': 'sensing_of_object_menu',
                    'inputName': 'OBJECT'
                }
            ]
        },
        'sensing_current': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'CURRENTMENU'
                }
            ]
        },
        'sensing_dayssince2000': {
            'argMap': [
            ]
        },
        'sensing_username': {
            'argMap': [
            ]
        },
        'sensing_userid': {
            'argMap': [
            ]
        },
        'operator_add': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'NUM1'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'NUM2'
                }
            ]
        },
        'operator_subtract': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'NUM1'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'NUM2'
                }
            ]
        },
        'operator_multiply': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'NUM1'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'NUM2'
                }
            ]
        },
        'operator_divide': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'NUM1'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'NUM2'
                }
            ]
        },
        'operator_random': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'FROM'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'TO'
                }
            ]
        },
        'operator_lt': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'OPERAND1'
                },
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'OPERAND2'
                }
            ]
        },
        'operator_equals': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'OPERAND1'
                },
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'OPERAND2'
                }
            ]
        },
        'operator_gt': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'OPERAND1'
                },
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'OPERAND2'
                }
            ]
        },
        'operator_and': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'boolean',
                    'inputName': 'OPERAND1'
                },
                {
                    'type': 'input',
                    'inputOp': 'boolean',
                    'inputName': 'OPERAND2'
                }
            ]
        },
        'operator_or': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'boolean',
                    'inputName': 'OPERAND1'
                },
                {
                    'type': 'input',
                    'inputOp': 'boolean',
                    'inputName': 'OPERAND2'
                }
            ]
        },
        'operator_not': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'boolean',
                    'inputName': 'OPERAND'
                }
            ]
        },
        'operator_join': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'STRING1'
                },
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'STRING2'
                }
            ]
        },
        'operator_letter_of': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_whole_number',
                    'inputName': 'LETTER'
                },
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'STRING'
                }
            ]
        },
        'operator_length': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'STRING'
                }
            ]
        },
        'operator_mod': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'NUM1'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'NUM2'
                }
            ]
        },
        'operator_round': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'NUM'
                }
            ]
        },
        'operator_mathop': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'OPERATOR'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'NUM'
                }
            ]
        },
        'data_variable': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'VARIABLE',
                    'variableType': Scratch3Data.VAR_SCALAR_TYPE
                }
            ]
        },
        'data_setvariableto': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'VARIABLE',
                    'variableType': Scratch3Data.VAR_SCALAR_TYPE
                },
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'VALUE'
                }
            ]
        },
        'data_changevariableby': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'VARIABLE',
                    'variableType': Scratch3Data.VAR_SCALAR_TYPE
                },
                {
                    'type': 'input',
                    'inputOp': 'math_number',
                    'inputName': 'VALUE'
                }
            ]
        },
        'data_showvariable': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'VARIABLE',
                    'variableType': Scratch3Data.VAR_SCALAR_TYPE
                }
            ]
        },
        'data_hidevariable': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'VARIABLE',
                    'variableType': Scratch3Data.VAR_SCALAR_TYPE
                }
            ]
        },
        'data_listcontents': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'LIST',
                    'variableType': Scratch3Data.VAR_LIST_TYPE
                }
            ]
        },
        'data_addtolist': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'ITEM'
                },
                {
                    'type': 'field',
                    'fieldName': 'LIST',
                    'variableType': Scratch3Data.VAR_LIST_TYPE
                }
            ]
        },
        'data_deleteoflist': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_integer',
                    'inputName': 'INDEX'
                },
                {
                    'type': 'field',
                    'fieldName': 'LIST',
                    'variableType': Scratch3Data.VAR_LIST_TYPE
                }
            ]
        },
        'data_insertatlist': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'ITEM'
                },
                {
                    'type': 'input',
                    'inputOp': 'math_integer',
                    'inputName': 'INDEX'
                },
                {
                    'type': 'field',
                    'fieldName': 'LIST',
                    'variableType': Scratch3Data.VAR_LIST_TYPE
                }
            ]
        },
        'data_replaceitemoflist': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_integer',
                    'inputName': 'INDEX'
                },
                {
                    'type': 'field',
                    'fieldName': 'LIST',
                    'variableType': Scratch3Data.VAR_LIST_TYPE
                },
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'ITEM'
                }
            ]
        },
        'data_itemoflist': {
            'argMap': [
                {
                    'type': 'input',
                    'inputOp': 'math_integer',
                    'inputName': 'INDEX'
                },
                {
                    'type': 'field',
                    'fieldName': 'LIST',
                    'variableType': Scratch3Data.VAR_LIST_TYPE
                }
            ]
        },
        'data_lengthoflist': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'LIST',
                    'variableType': Scratch3Data.VAR_LIST_TYPE
                }
            ]
        },
        'data_listcontainsitem': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'LIST',
                    'variableType': Scratch3Data.VAR_LIST_TYPE
                },
                {
                    'type': 'input',
                    'inputOp': 'text',
                    'inputName': 'ITEM'
                }
            ]
        },
        'data_showlist': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'LIST',
                    'variableType': Scratch3Data.VAR_LIST_TYPE
                }
            ]
        },
        'data_hidelist': {
            'argMap': [
                {
                    'type': 'field',
                    'fieldName': 'LIST',
                    'variableType': Scratch3Data.VAR_LIST_TYPE
                }
            ]
        }
        // 'procedures_definition': {
        //     'argMap': []
        // },
        // 'getParam': {
        //     // Doesn't map to single 'opcode'. Import step assigns final correct 'opcode'.
        //     'opcode': 'argument_reporter_string_number',
        //     'argMap': [
        //         {
        //             'type': 'field',
        //             'fieldName': 'VALUE'
        //         }
        //     ]
        // },
        // 'procedures_call': {
        //     'argMap': []
        // }
    };
}
}
