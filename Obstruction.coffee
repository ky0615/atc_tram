_ = require "lodash"

module.exports = class Obstruction
  list:
    yard_s01:
      type: "s"
      alias: "構内入れ替え出発"

    s1_h1_j1:
      type: "j"
      alias: "利府駅_本線1_第1場内(第3出発)"
    s1_h1_j2:
      type: "j"
      alias: "利府駅_本線1_第2場内(第2出発)"
    s1_h1_j3:
      type: "j"
      alias: "利府駅_本線1_第3場内(第1出発)"
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

  # 本線2
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

  # 新利府駅　場内 本線2
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
      alias: "新利府駅_第5場内(出発)"

  # 本線2 新利府駅ー岩切駅
    s3_h2_o10:
      type: "o"
      alias: "岩切駅_第10閉塞"
    s3_h2_o9:
      type: "o"
      alias: "岩切駅_第9閉塞"
    s3_h2_o8:
      type: "o"
      alias: "岩切駅_第8閉塞"
    s3_h2_o7:
      type: "o"
      alias: "岩切駅_第7閉塞"
    s3_h2_o6:
      type: "o"
      alias: "岩切駅_第6閉塞"
    s3_h2_o5:
      type: "o"
      alias: "岩切駅_第5閉塞"
    s3_h2_o4:
      type: "o"
      alias: "岩切駅_第4閉塞"
    s3_h2_o3:
      type: "o"
      alias: "岩切駅_第3閉塞"
    s3_h2_o2:
      type: "o"
      alias: "岩切駅_第2閉塞"
    s3_h2_o1:
      type: "o"
      alias: "岩切駅_第1閉塞"

  # 岩切駅　場内 本線
    s3_h0_j1:
      type: "j"
      alias: "岩切駅_第1場内(出発)"
      comment: "ポイント駆動確認"
    s3_h0_j2:
      type: "j"
      alias: "岩切駅_第2場内"
    s3_h0_j3:
      type: "j"
      alias: "岩切駅_第3場内"
    s3_h0_j4:
      type: "j"
      alias: "岩切駅_第4場内(絶対停止)"
      comment: "常時赤"
      signal: 0

  # 本線1 岩切駅ー新利府駅
    s3_h1_o11:
      type: "o"
      alias: "岩切駅_第11閉塞"
    s3_h1_o10:
      type: "o"
      alias: "岩切駅_第10閉塞"
    s3_h1_o9:
      type: "o"
      alias: "岩切駅_第9閉塞"
    s3_h1_o8:
      type: "o"
      alias: "岩切駅_第8閉塞"
    s3_h1_o7:
      type: "o"
      alias: "岩切駅_第7閉塞"
    s3_h1_o6:
      type: "o"
      alias: "岩切駅_第6閉塞"
    s3_h1_o5:
      type: "o"
      alias: "岩切駅_第5閉塞"
    s3_h1_o4:
      type: "o"
      alias: "岩切駅_第4閉塞"
    s3_h1_o3:
      type: "o"
      alias: "岩切駅_第3閉塞"
    s3_h1_o2:
      type: "o"
      alias: "岩切駅_第2閉塞"
    s3_h1_o1:
      type: "o"
      alias: "岩切駅_第1閉塞"

  # 新利府駅　場内 本線1
    s2_h1_j1:
      type: "j"
      alias: "新利府駅_第1場内"
    s2_h1_j2:
      type: "j"
      alias: "新利府駅_第2場内"
    s2_h1_j3:
      type: "j"
      alias: "新利府駅_第3場内"
    s2_h1_j4:
      type: "j"
      alias: "新利府駅_第4場内(出発)"


  # 新利府駅ー利府駅 本線1
    s1_h1_o3:
      type: "o"
      alias: "利府駅_第3閉塞"
    s1_h1_o2:
      type: "o"
      alias: "利府駅_第2閉塞"
    s1_h1_o1:
      type: "o"
      alias: "利府駅_第1閉塞"

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
    yard_to_s3:
      alias: "ヤードから出場(岩切駅着)"
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
        "s2_h2_j5"

        "s3_h2_o10"
        "s3_h2_o9"
        "s3_h2_o8"
        "s3_h2_o7"
        "s3_h2_o6"
        "s3_h2_o5"
        "s3_h2_o4"
        "s3_h2_o3"
        "s3_h2_o2"
        "s3_h2_o1"

        "s3_h0_j1"
        "s3_h0_j2"
        "s3_h0_j3"
        "s3_h0_j4"
      ]
    s3_to_s1:
    # 本線1通行
      alias: "岩切 発 利府行"
      route: [
        "s3_h0_j4"
        "s3_h0_j3"
        "s3_h0_j2"
        "s3_h0_j1" # 出発

        "s3_h1_o11"
        "s3_h1_o10"
        "s3_h1_o9"
        "s3_h1_o8"
        "s3_h1_o7"
        "s3_h1_o6"
        "s3_h1_o5"
        "s3_h1_o4"
        "s3_h1_o3"
        "s3_h1_o2"
        "s3_h1_o1"

        "s2_h1_j1" # 新利府駅 第一場内
        "s2_h1_j2"
        "s2_h1_j3"
        "s2_h1_j4" # 出発

        "s1_h1_o3"
        "s1_h1_o2"
        "s1_h1_o1" # 入場確認

        "s1_h1_j1"
        "s1_h1_j2"
        "s1_h1_j3"
      ]
    s1_to_s3:
      alias: "利府　発　岩切行"
      route: [
        # 利府出場
        "s1_h1_j3"
        "s1_h1_j2" # スプリングポイント
        "s1_h1_j1" # なんかよしなにやる

        "s1_h2_o5"
        "s1_h2_o4"
        "s1_h2_o3"
        "s1_h2_o2"
        "s1_h2_o1"

        # 新利府場内
        "s2_h2_j1"
        "s2_h2_j2"
        "s2_h2_j3"
        "s2_h2_j4"
        "s2_h2_j5"

        # 新利府出発
        "s3_h2_o10"
        "s3_h2_o9"
        "s3_h2_o8"
        "s3_h2_o7"
        "s3_h2_o6"
        "s3_h2_o5"
        "s3_h2_o4"
        "s3_h2_o3"
        "s3_h2_o2"
        "s3_h2_o1"

        "s3_h0_j1"
        "s3_h0_j2"
        "s3_h0_j3"
        "s3_h0_j4"
      ]
  constructor: ->
    @setStaffSection()
  setStaffSection: =>
    _.forEach @staff, (val)=>
      val.route = val.route.map (val)=>
        @findSection val

  findStaff: (staffName)=>
    unless @staff[staffName]
      console.error "staff name is not defined"
      return

    staff = @staff[staffName]
    console.log staff
    staff.route = staff.route.map (val)=>
      @findSection val
    return staff

  findSection: (sectionName)->
    unless @list[sectionName]
      console.error "section name is not defined"
      return sectionName
    return @list[sectionName]
