_ = require "lodash"

module.exports = class Obstruction
  list:
    yard_s01:
      type: "s"
      alias: "構内入れ替え出発"
    s1_h1_j1:
      type: "j"
      alias: "利府駅_本線1_第1場内(出発)"
    s1_h1_j2:
      type: "j"
      alias: "利府駅_本線1_第2場内"
    s1_h1_j3:
      type: "j"
      alias: "利府駅_本線1_第3場内"
      comment: "常時赤"
      signal: 0
    s1_h2_j1:
      type: "j"
      alias: "利府駅_本線2_第1場内(出発)"
    s1_h2_j2:
      type: "j"
      alias: "利府駅_本線2_第2場内"
    s1_h2_j3:
      type: "j"
      alias: "利府駅_本線2_第3場内"
      comment: "常時赤"
      signal: 0
    s1_h1_s1:
      type: "s"
      alias: "利府駅_本線1_出発"
      comment: "ポイント駆動確認"
    s1_h2_s1:
      type: "s"
      alias: "利府駅_本線2_出発"
      comment: "ポイント駆動確認"

    s1_h2_o5:
      type: "o"
      alias: "新利府駅_第5閉塞"
    s1_h2_o4:
      type: "o"
      alias: "新利府駅_第4閉塞"
    s1_h2_o3:
      type: "o"
      alias: "新利府駅_第3閉塞"
    s1_h2_o2:
      type: "o"
      alias: "新利府駅_第2閉塞"
    s1_h2_o1:
      type: "o"
      alias: "新利府駅_第1閉塞"

    s2_h2_j1:
      type: "j"
      alias: "新利府駅_第1場内"
    s2_h2_j2:
      type: "j"
      alias: "新利府駅_第2場内"
    s2_h2_j3:
      type: "j"
      alias: "新利府駅_第3場内"
    s2_h2_j4:
      type: "j"
      alias: "新利府駅_第4場内"
    s2_h2_j5:
      type: "j"
      alias: "新利府駅_第5場内"
    s2_h2_j5:
      type: "j"
      alias: "新利府駅_第5場内(出発)"


  staff:
    yard_to_s2:
      alias: "ヤードから出場"
      route: [
        "yard_s01"
        "s1_h1_j2"
        # ポイントP2駆動
        "s1_h2_o4"
        "s1_h2_o3"
        "s1_h2_o2"
        "s1_h2_o1"
        "s2_h2_j1"
        "s2_h2_j2"
        "s2_h2_j3"
        "s2_h2_j4"
        "s2_h2_j5" # 終点
      ]
