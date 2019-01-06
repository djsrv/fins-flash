/*
 * Scratch Project Editor and Player
 * Copyright (C) 2014 Massachusetts Institute of Technology
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

// Specs.as
// John Maloney, April 2010
//
// This file defines the command blocks and categories.
// To add a new command:
//		a. add a specification for the new command to the commands array
//		b. add a primitive for the new command to the interpreter

package {
	import flash.display.Bitmap;
	import assets.Resources;

public class Specs {

	public static const GET_VAR:String = "data_variable";
	public static const SET_VAR:String = "data_setvariableto";
	public static const CHANGE_VAR:String = "data_changevariableby";
	public static const GET_LIST:String = "data_listcontents";
	public static const CALL:String = "procedures_call";
	public static const PROCEDURE_DEF:String = "procedures_definition";
	public static const GET_PARAM:String = "argument_reporter";

	public static const motionCategory:int = 1;
	public static const looksCategory:int = 2;
	public static const eventsCategory:int = 5;
	public static const controlCategory:int = 6;
	public static const operatorsCategory:int = 8;
	public static const dataCategory:int = 9;
	public static const myBlocksCategory:int = 10;
	public static const listCategory:int = 12;
	public static const extensionsCategory:int = 20;

	public static var variableColor:int = 0xEE7D16; // Scratch 1.4: 0xF3761D
	public static var listColor:int = 0xCC5B22; // Scratch 1.4: 0xD94D11
	public static var procedureColor:int = 0x632D99; // 0x531E99;
	public static var parameterColor:int = 0x5947B1;
	public static var extensionsColor:int = 0x4B4A60; // 0x72228C; // 0x672D79;

	private static const undefinedColor:int = 0xD42828;

	public static const categories:Array = [
	 // id   category name	color
		[0,  "undefined",	0xD42828],
		[1,  "Motion",		0x4a6cd4],
		[2,  "Looks",		0x8a55d7],
		[3,  "Sound",		0xbb42c3],
		[4,  "Pen",			0x0e9a6c], // Scratch 1.4: 0x009870
		[5,  "Events",		0xc88330],
		[6,  "Control",		0xe1a91a],
		[7,  "Sensing",		0x2ca5e2],
		[8,  "Operators",	0x5cb712],
		[9,  "Data",		variableColor],
		[10, "More Blocks",	procedureColor],
		[11, "Parameter",	parameterColor],
		[12, "List",		listColor],
		[20, "Extension",	extensionsColor],
	];

	public static function blockColor(categoryID:int):int {
		if (categoryID > 100) categoryID -= 100;
		for each (var entry:Array in categories) {
			if (entry[0] == categoryID) return entry[2];
		}
		return undefinedColor;
	}

	public static function entryForCategory(categoryName:String):Array {
		for each (var entry:Array in categories) {
			if (entry[1] == categoryName) return entry;
		}
		return [1, categoryName, 0xFF0000]; // should not happen
	}

	public static function nameForCategory(categoryID:int):String {
		if (categoryID > 100) categoryID -= 100;
		for each (var entry:Array in categories) {
			if (entry[0] == categoryID) return entry[1];
		}
		return "Unknown";
	}

	public static function IconNamed(name:String):* {
		// Block icons are 2x resolution to look better when scaled.
		var icon:Bitmap;
		if (name == "greenFlag") icon = Resources.createBmp('flagIcon');
		if (name == "stop") icon = Resources.createBmp('stopIcon');
		if (name == "turnLeft") icon = Resources.createBmp('turnLeftIcon');
		if (name == "turnRight") icon = Resources.createBmp('turnRightIcon');
		if (icon != null) icon.scaleX = icon.scaleY = 0.5;
		return icon;
	}

	public static var commands:Array = [
		// block specification					type, cat, opcode			default args (optional)
		// motion
		["move %n steps",						" ", 1, "motion_movesteps",					10],
		["turn @turnRight %n degrees",			" ", 1, "motion_turnright",				15],
		["turn @turnLeft %n degrees",			" ", 1, "motion_turnleft",				15],
		["--"],
		["point in direction %d.direction",		" ", 1, "motion_pointindirection",					90],
		["point towards %m.spriteOrMouse",		" ", 1, "motion_pointtowards",			"_mouse_"],
		["--"],
		["go to x:%n y:%n",						" ", 1, "motion_gotoxy"],
		["go to %m.location",					" ", 1, "motion_goto",		"_mouse_"],
		["glide %n secs to x:%n y:%n",			" ", 1, "motion_glidesecstoxy"],
		["--"],
		["change x by %n",						" ", 1, "motion_changexby",			10],
		["set x to %n",							" ", 1, "motion_setx",					0],
		["change y by %n",						" ", 1, "motion_changeyby",			10],
		["set y to %n",							" ", 1, "motion_sety",					0],
		["--"],
		["if on edge, bounce",					" ", 1, "motion_ifonedgebounce"],
		["-"],
		["set rotation style %m.rotationStyle",	" ", 1, "motion_setrotationstyle", 		"left-right"],
		["--"],
		["x position",							"r", 1, "motion_xposition"],
		["y position",							"r", 1, "motion_yposition"],
		["direction",							"r", 1, "motion_direction"],

		// looks
		["say %s for %n secs",					" ", 2, "looks_sayforsecs",	"Hello!", 2],
		["say %s",								" ", 2, "looks_say",							"Hello!"],
		["think %s for %n secs",				" ", 2, "looks_thinkforsecs", "Hmm...", 2],
		["think %s",							" ", 2, "looks_think",						"Hmm..."],
		["-"],
		["show",								" ", 2, "looks_show"],
		["hide",								" ", 2, "looks_hide"],
		["-"],
		["switch costume to %m.costume",		" ", 2, "looks_switchcostumeto",				"costume1"],
		["next costume",						" ", 2, "looks_nextcostume"],
		["switch backdrop to %m.backdrop",		" ", 2, "looks_switchbackdropto", 				"backdrop1"],
		["-"],
		["change %m.effect effect by %n",		" ", 2, "looks_changeeffectby",	"color", 25],
		["set %m.effect effect to %n",			" ", 2, "looks_seteffectto",		"color", 0],
		["clear graphic effects",				" ", 2, "looks_cleargraphiceffects"],
		["-"],
		["change size by %n",					" ", 2, "looks_changesizeby",	 		10],
		["set size to %n%",						" ", 2, "looks_setsizeto", 				100],
		["-"],
		["go to front",							" ", 2, "looks_gotofrontback"],
		["go back %n layers",					" ", 2, "looks_goforwardbackwardlayers", 			1],
		["-"],
		["costume #",							"r", 2, "looks_costumenumbername"],
		["backdrop name",						"r", 2, "looks_backdropnumbername"],
		["size",								"r", 2, "looks_size"],

		// stage looks
		["switch backdrop to %m.backdrop",			" ", 102, "looks_switchbackdropto", 			"backdrop1"],
		["switch backdrop to %m.backdrop and wait", " ", 102, "looks_switchbackdroptoandwait",		"backdrop1"],
		["next backdrop",							" ", 102, "looks_nextbackdrop"],
		["-"],
		["change %m.effect effect by %n",		" ", 102, "looks_changeeffectby",	"color", 25],
		["set %m.effect effect to %n",			" ", 102, "looks_seteffectto",		"color", 0],
		["clear graphic effects",				" ", 102, "looks_cleargraphiceffects"],
		["-"],
		["backdrop name",						"r", 102, "looks_backdropnumbername"],
		["backdrop #",							"r", 102, "looks_backdropnumbername"],

		// sound
		["play sound %m.sound",					" ", 3, "sound_play",						"pop"],
		["play sound %m.sound until done",		" ", 3, "sound_playuntildone",				"pop"],
		["stop all sounds",						" ", 3, "sound_stopallsounds"],
		["-"],
		["play drum %d.drum for %n beats",		" ", 3, "music_playDrumForBeats",							1, 0.25],
		["rest for %n beats",					" ", 3, "music_restForBeats",				0.25],
		["-"],
		["play note %d.note for %n beats",		" ", 3, "music_playNoteForBeats",	60, 0.5],
		["set instrument to %d.instrument",		" ", 3, "music_setInstrument",						1],

		["-"],
		["change volume by %n",					" ", 3, "sound_changevolumeby",					-10],
		["set volume to %n%",					" ", 3, "sound_setvolumeto", 					100],
		["volume",								"r", 3, "sound_volume"],
		["-"],
		["change tempo by %n",					" ", 3, "music_changeTempo",					20],
		["set tempo to %n bpm",					" ", 3, "music_setTempo",						60],
		["tempo",								"r", 3,  "music_getTempo"],

		// pen
		["clear",								" ", 4, "pen_clear"],
		["-"],
		["stamp",								" ", 4, "pen_stamp"],
		["-"],
		["pen down",							" ", 4, "pen_penDown"],
		["pen up",								" ", 4, "pen_penUp"],
		["-"],
		["set pen color to %c",					" ", 4, "pen_setPenColorToColor"],
		["change pen color by %n",				" ", 4, "pen_changePenHueBy"],
		["set pen color to %n",					" ", 4, "pen_setPenHueToNumber", 		0],
		["-"],
		["change pen shade by %n",				" ", 4, "pen_changePenShadeBy"],
		["set pen shade to %n",					" ", 4, "pen_setPenShadeToNumber",		50],
		["-"],
		["change pen size by %n",				" ", 4, "pen_changePenSizeBy",		1],
		["set pen size to %n",					" ", 4, "pen_setPenSizeTo", 			1],
		["-"],

		// stage pen
		["clear",								" ", 104, "pen_clear"],

		// triggers
		["when @greenFlag clicked",				"h", 5, "event_whenflagclicked"],
		["when %m.key key pressed",				"h", 5, "event_whenkeypressed", 		"space"],
		["when this sprite clicked",			"h", 5, "event_whenthisspriteclicked"],
		["when backdrop switches to %m.backdrop", "h", 5, "event_whenbackdropswitchesto", 	"backdrop1"],
		["--"],
		["when %m.triggerSensor > %n",			"h", 5, "whenSensorGreaterThan", "loudness", 10],
		["--"],
		["when I receive %m.broadcast",			"h", 5, "event_whenbroadcastreceived",			""],
		["broadcast %m.broadcast",				" ", 5, "event_broadcast",			""],
		["broadcast %m.broadcast and wait",		" ", 5, "event_broadcastandwait",	""],

		// control - sprite
		["wait %n secs",						" ", 6, "control_wait",	1],
		["-"],
		["repeat %n",							"c", 6, "control_repeat", 10],
		["forever",								"cf",6, "control_forever"],
		["-"],
		["if %b then",							"c", 6, "control_if"],
		["if %b then",							"e", 6, "control_if_else"],
		["wait until %b",						" ", 6, "control_wait_until"],
		["repeat until %b",						"c", 6, "control_repeat_until"],
		["-"],
		["stop %m.stop",						"f", 6, "control_stop", "all"],
		["-"],
		["when I start as a clone",				"h", 6, "control_start_as_clone"],
		["create clone of %m.spriteOnly",		" ", 6, "control_create_clone_of"],
		["delete this clone",					"f", 6, "control_delete_this_clone"],
		["-"],

		// control - stage
		["wait %n secs",						" ", 106, "control_wait",	1],
		["-"],
		["repeat %n",							"c", 106, "control_repeat", 10],
		["forever",								"cf",106, "control_forever"],
		["-"],
		["if %b then",							"c", 106, "control_if"],
		["if %b then",							"e", 106, "control_if_else"],
		["wait until %b",						" ", 106, "control_wait_until"],
		["repeat until %b",						"c", 106, "control_repeat_until"],
		["-"],
		["stop %m.stop",						"f", 106, "control_stop", "all"],
		["-"],
		["create clone of %m.spriteOnly",		" ", 106, "control_create_clone_of"],

		// sensing
		["touching %m.touching?",				"b", 7, "sensing_touchingobject",			"_mouse_"],
		["touching color %c?",					"b", 7, "sensing_touchingcolor"],
		["color %c is touching %c?",			"b", 7, "sensing_coloristouchingcolor"],
		["distance to %m.spriteOrMouse",		"r", 7, "sensing_distanceto",			"_mouse_"],
		["-"],
		["ask %s and wait",						" ", 7, "sensing_askandwait", 				"What's your name?"],
		["answer",								"r", 7, "sensing_answer"],
		["-"],
		["key %m.key pressed?",					"b", 7, "sensing_keypressed",			"space"],
		["mouse down?",							"b", 7, "sensing_mousedown"],
		["mouse x",								"r", 7, "sensing_mousex"],
		["mouse y",								"r", 7, "sensing_mousey"],
		["-"],
		["loudness",							"r", 7, "sensing_loudness"],
		["-"],
		["video %m.videoMotionType on %m.stageOrThis", "r", 7, "sensing_videoon", "motion"],
		["turn video %m.videoState",			" ", 7, "videoSensing_videoToggle",			"on"],
		["set video transparency to %n%",		" ", 7, "videoSensing_setVideoTransparency",		50],
		["-"],
		["timer",								"r", 7, "sensing_timer"],
		["reset timer",							" ", 7, "sensing_resettimer"],
		["-"],
		["%m.attribute of %m.spriteOrStage",	"r", 7, "sensing_of"],
		["-"],
		["current %m.timeAndDate", 				"r", 7, "sensing_current",			"minute"],
		["days since 2000", 					"r", 7, "sensing_dayssince2000"],
		["username",							"r", 7, "sensing_username"],

		// stage sensing
		["ask %s and wait",						" ", 107, "sensing_askandwait", 				"What's your name?"],
		["answer",								"r", 107, "sensing_answer"],
		["-"],
		["key %m.key pressed?",					"b", 107, "sensing_keypressed",		"space"],
		["mouse down?",							"b", 107, "sensing_mousedown"],
		["mouse x",								"r", 107, "sensing_mousex"],
		["mouse y",								"r", 107, "sensing_mousey"],
		["-"],
		["loudness",							"r", 107, "sensing_loudness"],
		["-"],
		["video %m.videoMotionType on %m.stageOrThis", "r", 107, "sensing_videoon", "motion", "Stage"],
		["turn video %m.videoState",			" ", 107, "videoSensing_videoToggle",			"on"],
		["set video transparency to %n%",		" ", 107, "videoSensing_setVideoTransparency",	50],
		["-"],
		["timer",								"r", 107, "sensing_timer"],
		["reset timer",							" ", 107, "sensing_resettimer"],
		["-"],
		["%m.attribute of %m.spriteOrStage",	"r", 107, "sensing_of"],
		["-"],
		["current %m.timeAndDate", 				"r", 107, "sensing_current",		"minute"],
		["days since 2000", 					"r", 107, "sensing_dayssince2000"],
		["username",							"r", 107, "sensing_username"],

		// operators
		["%n + %n",								"r", 8, "operator_add",					"", ""],
		["%n - %n",								"r", 8, "operator_subtract",					"", ""],
		["%n * %n",								"r", 8, "operator_multiply",					"", ""],
		["%n / %n",								"r", 8, "operator_divide",					"", ""],
		["-"],
		["pick random %n to %n",		"r", 8, "operator_random",		1, 10],
		["-"],
		["%s < %s",								"b", 8, "operator_lt",					"", ""],
		["%s = %s",								"b", 8, "operator_equals",					"", ""],
		["%s > %s",								"b", 8, "operator_gt",					"", ""],
		["-"],
		["%b and %b",							"b", 8, "operator_and"],
		["%b or %b",							"b", 8, "operator_or"],
		["not %b",								"b", 8, "operator_not"],
		["-"],
		["join %s %s",							"r", 8, "operator_join",	"hello ", "world"],
		["letter %n of %s",						"r", 8, "operator_letter_of",			1, "world"],
		["length of %s",						"r", 8, "operator_length",		"world"],
		["-"],
		["%n mod %n",							"r", 8, "operator_mod",					"", ""],
		["round %n",							"r", 8, "operator_round", 				""],
		["-"],
		["%m.mathOp of %n",						"r", 8, "operator_mathop",	"sqrt", 9],

		// variables
		["set %m.var to %s",								" ", 9, SET_VAR],
		["change %m.var by %n",								" ", 9, CHANGE_VAR],
		["show variable %m.var",							" ", 9, "data_showvariable"],
		["hide variable %m.var",							" ", 9, "data_hidevariable"],

		// lists
		["add %s to %m.list",								" ", 12, "data_addtolist"],
		["-"],
		["delete %d.listDeleteItem of %m.list",				" ", 12, "data_deleteoflist"],
		["insert %s at %d.listItem of %m.list",				" ", 12, "data_insertatlist"],
		["replace item %d.listItem of %m.list with %s",		" ", 12, "data_replaceitemoflist"],
		["-"],
		["item %d.listItem of %m.list",						"r", 12, "data_itemoflist"],
		["length of %m.list",								"r", 12, "data_lengthoflist"],
		["%m.list contains %s?",								"b", 12, "data_listcontainsitem"],
		["-"],
		["show list %m.list",								" ", 12, "data_showlist"],
		["hide list %m.list",								" ", 12, "data_hidelist"],

		// obsolete blocks from Scratch 1.4 that may be used in older projects
		["play drum %n for %n beats",			" ", 98, "music_midiPlayDrumForBeats", 1, 0.25], // Scratch 1.4 MIDI drum
		["set instrument to %n",				" ", 98, "music_midiSetInstrument", 1],
		["loud?",								"b", 98, "sensing_loud"],

		// testing and experimental control prims
		["noop",								"r", 99, "control_get_counter"],
		["counter",								"r", 99, "control_get_counter"],
		["clear counter",						" ", 99, "control_clear_counter"],
		["incr counter",						" ", 99, "control_incr_counter"],
		["for each %m.varName in %s",			"c", 99, "control_for_each", "v", 10],
		["while %b",							"c", 99, "control_while"],
		["all at once",							"c", 99, "control_all_at_once"],

		// stage motion (scrolling)
		["scroll right %n",						" ", 99, "motion_scroll_right",		10],
		["scroll up %n",						" ", 99, "motion_scroll_up",		10],
		["align scene %m.scrollAlign",			" ", 99, "motion_align_scene",		'bottom-left'],
		["x scroll",							"r", 99, "motion_xscroll"],
		["y scroll",							"r", 99, "motion_yscroll"],

		// other obsolete blocks from alpha/beta
		["hide all sprites",					" ", 99, "looks_hideallsprites"],
		["user id",								"r", 99, "sensing_userid"],

	];
}}
