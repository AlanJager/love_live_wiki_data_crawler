# encoding: utf-8

# regex test
# puts result = "第十九次" =~/Score Match/
# puts result.class


# sort type test
def sort_event_type(event_name)
  sm = event_name =~/Score Match/
  mf = event_name =~/Medley Festival/

  if !sm.nil?
    return 1
  elsif !mf.nil?
    return 2
  else 
    return 3
  end
end
# print sort_event_type("第二次Medley Festival")


def get_event_time(time_string)
  s_index = time_string.index('+')
  return time_string[s_index + 1..-2]
end
# print get_event_time("2014/06/12 (+13)")


def get_score(score)
  s_index = score.index('pt')
  return score[0, s_index]
end
# print get_score("75321pt")

def remove_suffix(string, suffix)
  s_index = string.index(suffix)
  return string[0, s_index]
end
# print remove_suffix("32364人", "人")

# result = [[["西木野真姬", 0, "11", "75321"], ["南小鸟", 0, "11", "78942"], ["小泉花阳", 0, "10", "58953"], ["矢泽妮可", 0, "11", "65954"], ["星空凛", 0, "10", "67541"], ["矢泽妮可", 0, "10", "69977"], ["西木野真姬", 0, "11", "88577"], ["田园海未", 0, "11", "67392"], ["星空凛", 0, "10", "60917"], ["东条希", 0, "11", "65596"], ["矢泽妮可", 0, "11", "71706"], ["高坂穗乃果", 0, "10", "59761"], ["小泉花阳", 0, "11", "64790"], ["绚濑绘里", 0, "11", "59678"], ["南小鸟", 0, "11", "71597"], ["东条希", 0, "10", "74009"], ["田园海未", 0, "9", "66560"], ["小泉花阳", 0, "11", "66007"], ["绚濑绘里", 0, "9", "127366"]], [["西木野真姬", 1, "11", "95021"], ["小泉花阳", 1, "10", "70386"], ["绚濑绘里", 1, "9", "75465"], ["南小鸟", 1, "11", "104757"], ["矢泽妮可", 1, "10", "99167"]], [["南小鸟", 2, "13", "23326"], ["田园海未", 2, "10", "21680"], ["矢泽妮可", 2, "10", "26070"], ["高坂穗乃果", 2, "10", "26364"], ["绚濑绘里", 2, "10", "28120"], ["小泉花阳", 2, "9", "22128"], ["东条希", 2, "10", "29183"], ["星空凛", 2, "10", "25261"], ["绚濑绘里", 2, "10", "26893"], ["高坂穗乃果", 2, "9", "22697"], ["田园海未", 2, "9", "31858"], ["东条希", 2, "11", "33374"], ["西木野真姬", 2, "9", "26794"], ["南小鸟", 2, "10", "35316"], ["小泉花阳", 2, "10", "24480"], ["高坂穗乃果", 2, "9", "23994"], ["绚濑绘里", 2, "10", "29168"], ["南小鸟", 2, "10", "34619"], ["西木野真姬", 2, "10", "28489"], ["田园海未", 2, "9", "22035"], ["星空凛", 2, "11", "25598"], ["东条希", 2, "11", "28052"], ["矢泽妮可", 2, "9", "26971"], ["高坂穗乃果", 2, "10", "24625"], ["星空凛", 2, "10", "23210"], ["西木野真姬", 2, "10", "38327"], ["高坂穗乃果", 2, "9", "33167"]]]
# print result[0][0]