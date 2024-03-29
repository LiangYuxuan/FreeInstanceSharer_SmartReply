if not _G.FreeInstanceSharer then return end
local F, L, P, G = unpack(_G.FreeInstanceSharer)

local fixer = {
    "魔兽小知识：“瑞文戴尔的死亡战马”5人本【斯坦索姆】亡灵区首领【奥里尔斯.瑞文戴尔领主】小几率掉落-掉率0.7%。",
    "魔兽小知识：“蓝色其拉作战坦克”60级团本【安其拉】小怪低几率掉落，掉率10-15%。",
    "魔兽小知识：“绿色其拉作战坦克”60级团本【安其拉】小怪低几率掉落，掉率10-15%。",
    "魔兽小知识：“黄色其拉作战坦克”60级团本【安其拉】小怪低几率掉落，掉率10-15%。",
    "魔兽小知识：“红色其拉作战坦克”60级团本【安其拉】小怪低几率掉落，掉率10-15%。",
    "魔兽小知识：“乌鸦之神”5人本【赛泰克大厅】英雄难度首领【安苏】小几率掉落，掉率1.6%。",
    "魔兽小知识：“迅捷白色陆行鸟”5人本【导魔师平台】英雄难度首领【凯尔萨斯.逐日者】小几率掉落，掉率4%。",
    "魔兽小知识：“炽热战马”70级团本【卡拉赞】首领【猎人阿图曼】小几率掉落，掉率0.9%。",
    "魔兽小知识：“奥的灰烬”70级团本【风暴要塞】首领【凯尔萨斯.逐日者】小几率掉落，掉率2%。",
    "魔兽小知识：“迷时始祖幼龙”诺森德风暴峭壁的超级稀有【迷时始祖幼龙】必掉落，个人拾取。",
    "魔兽小知识：“青铜幼龙”5人本【净化斯坦索姆】英雄难度额外首领【永恒腐蚀者】必掉。",
    "魔兽小知识：“蓝色始祖幼龙”5人本【乌特加德之巅】英雄难度首领【残忍的斯卡迪】小几率掉落，掉率1.5%。",
    "魔兽小知识：“黑色幼龙”80级团本【黑曜石圣殿】首领【萨塔里奥】10人三龙模式必掉。",
    "魔兽小知识：“暮光幼龙”80级团本【黑曜石圣殿】首领【萨塔里奥】25人三龙模式必掉。",
    "魔兽小知识：“蓝色幼龙”80级团本【永恒之眼】首领【玛里苟斯】10/25人小几率掉落，掉率4/6%。",
    "魔兽小知识：“碧蓝幼龙”80级团本【永恒之眼】首领【玛里苟斯】10/25人小几率掉落，掉率3%。",
    "魔兽小知识：“重型黑色猛犸战象”80级团本【阿尔卡冯的宝库】10/25人所有首领小几率掉落，掉率1%。",
    "魔兽小知识：“米米尔隆的头部”80级团本【奥杜尔】首领【尤格萨隆】25人0灯模式小几率掉落，掉率1.7%。",
    "魔兽小知识：“奥妮克希亚座龙”80级团本【奥妮克希亚的巢穴】首领【奥妮克希亚】10/25人小几率掉落，掉率1.3%。",
    "魔兽小知识：“无敌”80级团本【冰冠堡垒】首领【巫妖王】25人英雄难度小几率掉落，掉率1%。",
    "魔兽小知识：“磷光石幼龙”深岩之洲的超级稀有【奥依纳克斯】必掉，个人拾取。",
    "魔兽小知识：“灰色骑骑乘骆驼”奥丹姆超级稀有物体【神秘的骆驼雕像】进镜像击杀稀有可取得，可购买。",
    "魔兽小知识：“驯服的海马”瓦斯琪尔的稀有【波塞冬斯】必掉，个人拾取。",
    "魔兽小知识：“琉璃石幼龙”5人本【巨石之核】首领【岩革】小几率掉落，掉率0.8%。",
    "魔兽小知识：“北风幼龙”5人本【旋云之巅】首领【艾塔伊洛斯】小几率掉落，掉率0.8%。",
    "魔兽小知识：“阿曼尼战熊”5人本【祖阿曼】限时击杀四个动物首领获得。",
    "魔兽小知识：“装甲拉扎什迅猛龙”5人本【祖尔格拉布】首领【血领主曼多基尔】小几率掉落，掉率1%。",
    "魔兽小知识：“迅捷祖利安黑豹”5人本【祖尔格拉布】首领【高阶祭司基尔娜拉】小几率掉落，掉率1%。",
    "魔兽小知识：“南风幼龙”85级团本【风神王座】首领【奥拉基尔】小几率掉落，掉率1%。",
    "魔兽小知识：“奥利色拉佐尔的烈焰之爪”85级团本【火焰之地】首领【奥利色拉佐尔】小几率掉落，掉率2%。",
    "魔兽小知识：“纯血火鹰”85级团本【火焰之地】首领【拉格纳罗斯】小几率掉落，掉率1%。",
    "魔兽小知识：“实验体12-B”85级团本【巨龙之魂】首领【奥卓克希昂】小几率掉落，掉率1.2%。",
    "魔兽小知识：“炽炎幼龙”85级团本【巨龙之魂】首领【疯狂的死亡之翼】小几率掉落，掉率4%。",
    "魔兽小知识：“生命缚誓者仆从”85级团本【巨龙之魂】首领【疯狂的死亡之翼】小几率掉落，掉率1%。",
    "魔兽小知识：“雷霆红玉云端翔龙”潘达利亚锦绣谷收集10个【天空碎片】后击杀【阿拉尼】必掉。",
    "魔兽小知识：“岩灰原始恐角龙”潘达利亚稀有【赞达拉战争使者】较低几率掉落，掉率4%。",
    "魔兽小知识：“珀光原始恐角龙”潘达利亚稀有【赞达拉战争使者】较低几率掉落，掉率4%。",
    "魔兽小知识：“翡翠原始恐角龙”潘达利亚稀有【赞达拉战争使者】较低几率掉落，掉率4%。",
    "魔兽小知识：“黑色原始迅猛龙”潘达利亚巨兽岛的恐龙掉落【原始恐龙蛋】3天后孵化必出一只。",
    "魔兽小知识：“绿色原始迅猛龙”潘达利亚巨兽岛的恐龙掉落【原始恐龙蛋】3天后孵化必出一只。",
    "魔兽小知识：“红色原始迅猛龙”潘达利亚巨兽岛的恐龙掉落【原始恐龙蛋】3天后孵化必出一只。",
    "魔兽小知识：“雷霆玛瑙云端翔龙”潘达利亚锦稀有【惑龙】小几率掉落，掉率1%。",
    "魔兽小知识：“神圣玛瑙云端翔龙”潘达利亚锦稀有【怒之煞龙】超低几率掉落，掉率0.03%。",
    "魔兽小知识：“炮舰之子”潘达利亚锦稀有【炮舰】超低几率掉落，掉率0.02%。",
    "魔兽小知识：“雷霆蓝晶云端翔龙”潘达利亚雷神岛稀有【风暴领主纳拉克】超低几率掉落，掉率0.03%。",
    "魔兽小知识：“冰蓝原始恐角龙”潘达利亚稀有【乌达斯塔】超低几率掉落，掉率0.02%。",
    "魔兽小知识：“星光云端翔龙”90级团本【魔古山宝库】首领【伊拉贡】小几率掉落，掉率1.3%。",
    "魔兽小知识：“赫利东的子嗣”90级团本【雷电王座】首领【郝立东】小几率掉落，掉率3%。",
    "魔兽小知识：“季鹍之嗣”90级团本【雷电王座】首领【季鹍】小几率掉落，掉率3%。",
    "魔兽小知识：“库卡隆战蝎”90级团本【决战奥格瑞玛】史诗难度首领【加尔鲁什.地狱咆哮】小几率掉落，掉率1%。",
    "魔兽小知识：“迅捷风蹄塔布羊”德拉诺影月谷稀有【觅径者】必掉。",
    "魔兽小知识：“巨型灰牙野猪”德拉诺霜火岭稀有【戈罗克】必掉。",
    "魔兽小知识：“天蓝淡水兽”德拉塔拉多岭稀有【泥皮】必掉。",
    "魔兽小知识：“血蹄公牛”德拉纳格兰稀有【雷霆纳克】必掉。",
    "魔兽小知识：“斑点草地践踏者”德拉诺纳格兰稀有【鲁克胡克】必掉。",
    "魔兽小知识：“日隐小戈隆”德拉诺霜火岭稀有【重拳】必掉。",
    "魔兽小知识：“夜嚎铁颚狼”德拉诺霜火岭稀有【诺卡罗什】必掉。",
    "魔兽小知识：“装甲刀脊野猪”德拉诺塔纳安丛林四个军团勇士稀有掉落笼子，小几率开出，掉率11%。",
    "魔兽小知识：“苔原冰蹄牛”德拉诺塔纳安丛林四个军团勇士稀有掉落笼子，小几率开出，掉率11%。",
    "魔兽小知识：“战歌恐牙狼”德拉诺塔纳安丛林四个军团勇士稀有掉落笼子，小几率开出，掉率11%。",
    "魔兽小知识：“黑暗之星的灵爪飞鹰”德拉诺塔各地区超级稀有【现世边界】传送门入内拾取，必掉。",
    "魔兽小知识：“日光峰林飞鹰”德拉诺阿兰卡峰林稀有【鲁克玛】超小几率掉落，掉率0.03%。",
    "魔兽小知识：“铁蹄毁灭者”100级团本【黑石铸造厂】史诗难度首领【黑手】小几率掉落，掉率1%。",
    "魔兽小知识：“魔钢歼灭者”100级团本【地狱火堡垒】史诗难度首领【阿克蒙德】小几率掉落，掉率1%。",
    "魔兽小知识：“永恒时空撕裂者”任何时光漫游5人本首领超小几率掉落，掉率0.1%。",
    "魔兽小知识：“失落的角鹰兽”破碎群岛阿苏纳刷新瞬灭水晶后先找齐5个获得。",
    "魔兽小知识：“燃烬巨龙”5人本【从返卡拉赞】史诗模式限时召唤出【夜之魇】必掉。",
    "魔兽小知识：“午夜”5人本【从返卡拉赞】史诗模式首领【猎人阿图曼】小几率掉落，掉率1%。",
    "魔兽小知识：“炎狱地狱火”110级团本【暗夜要塞】史诗模式首领【古尔丹】小几率掉落，掉率1%。",
    "魔兽小知识：“邪焰地狱火”110级团本【暗夜要塞】史诗模式首领【古尔丹】小几率掉落，掉率1%。",
    "魔兽小知识：“深渊蠕虫”110级团本【萨格拉斯之墓】首领【主母萨丝琳】小几率掉落，掉率1%。",
    "魔兽小知识：“安托兰灼焦恶犬”110级团本【安托鲁斯.燃烧王座】首领【沙图格】小几率掉落，掉率1%。",
    "魔兽小知识：“戴镣铐的乌祖尔”110级团本【安托鲁斯.燃烧王座】史诗模式首领【寂灭者阿古斯】小几率掉落，掉率1%。",
    "魔兽小知识：“疯狂的混沌奔行者”破碎群岛阿古斯马凯雷的稀有【牧羊人卡沃斯】较低几率掉落，掉率3%。",
    "魔兽小知识：“酸液喷射者”破碎群岛阿古斯马凯雷的稀有【吞噬者斯克里格】较低几率掉落，掉率3%。",
    "魔兽小知识：“柔光法力鳐”破碎群岛阿古斯马凯雷的稀有【毒尾天鳍鳐】较低几率掉落，掉率3%。",
    "魔兽小知识：“邪犬”破碎群岛阿古斯安托兰废墟的稀有【训犬大师克拉克兹】较低几率掉落，掉率3%。",
    "魔兽小知识：“赤红涎喉者”破碎群岛阿古斯安托兰废墟的稀有【疱吼】较低几率掉落，掉率3%。",
    "魔兽小知识：“毒牙撕咬者”破碎群岛阿古斯安托兰废墟的稀有【普西拉】和【弗拉克苏尔】较低几率掉落，掉率2%。",
    "魔兽小知识：“暗孢法力鳐”破碎群岛多个稀有掉落【邪斑鱼卵】孵出。",
    "魔兽小知识：“邪光法力鳐”破碎群岛多个稀有掉落【邪斑鱼卵】孵出。",
    "魔兽小知识：“荧光法力鳐”破碎群岛多个稀有掉落【邪斑鱼卵】孵出。",
    "魔兽小知识：“活跃法力鳐”破碎群岛多个稀有掉落【邪斑鱼卵】孵出。",
    "魔兽小知识：“迅捷白化迅猛龙”120级版本阿拉希高地的稀有【驭兽者卡玛】有几率掉落。",
    "魔兽小知识：“啮颅者”120级版本阿拉希高地的稀有【啮颅者】有几率掉落。",
    "魔兽小知识：“高地野马”120级版本阿拉希高地的稀有【末日骑士赫尔格里姆】有几率掉落。",
    "魔兽小知识：“失意高地野马”120级版本阿拉希高地的稀有【骑士队长阿尔德林】有几率掉落。",
    "魔兽小知识：“小毛驴”120级版本阿拉希高地的稀有【监工克里克斯】有几率掉落。",
    "魔兽小知识：“枯木恐翼蝠”120级版本阿拉希高地的稀有【屠戮者尼玛尔】有几率掉落。",
    "魔兽小知识：“沙丘食腐狼”120级沃顿的【无信者蛇人】极低几率掉落，掉率0.01%。",
    "魔兽小知识：“跃泽吮血蛛”120级纳兹米尔的【鲜血巨魔】极低几率掉落，掉率0.01%。",
    "魔兽小知识：“金鬃”120级斯托送谷地的【人行怪物】极低几率掉落，掉率0.01%。",
    "魔兽小知识：“惊怖驮骡”120级德鲁斯瓦的【女巫会成员】极低几率掉落，掉率0.01%。",
    "魔兽小知识：“纳沙塔尔鲜血巨蛇”120级收集20个【深渊碎片】后召唤【深渊信徒】取得。",
    "魔兽小知识：“墓穴猎手”5人本【诸王之眠】史诗难度首领【达萨大王】小几率掉落。",
    "魔兽小知识：“鲨鱼饵”5人本【自由镇】史诗难度首领【哈兰.斯威提】小几率掉落。",
    "魔兽小知识：“孢林抱齿兽”5人本【地渊孢林】史诗难度首领【不羁畸变怪】小几率掉落。",
    "魔兽小知识：“黑掌”120级版本黑海岸的稀有【阿加丝.苦艾】/【黑掌】有几率掉落。",
    "魔兽小知识：“灰谷奇美拉”120级版本黑海岸的稀有【阿拉什阿尼尔】有几率掉落。",
    "魔兽小知识：“惊恐的科多兽”120级版本黑海岸的特殊稀有【惊恐的科多兽】必掉。",
    "魔兽小知识：“珀色夜刃豹”120级版本黑海岸的稀有【斩颅者莫克索】/【阿希尔.露火】有几率掉落。",
    "魔兽小知识：“卡多雷夜刃豹”120级版本黑海岸的稀有【克罗兹.血怒】/【影爪】有几率掉落。",
    "魔兽小知识：“加氏灭世机甲”120级团本【达萨罗之战】首领【大工匠梅卡托克】小几率掉落。",
    "魔兽小知识：“冰川狂潮”120级团本【达萨罗之战】史诗难度首领【吉安娜】小几率掉落，掉率1%。",
    "魔兽小知识：“锈废飘移者”麦卡贡稀有【锈羽】几率掉落，掉率0.5%。",
    "魔兽小知识：“生锈的机械爬蛛”麦卡贡稀有【蜘蛛收割者】几率掉落，掉率0.3%。",
    "魔兽小知识：“麦卡贡维和者”5人本【麦卡贡行动】史诗难度首领【HK-8型空中压制单位】小几率掉落。",
    "魔兽小知识：“R-21/X型空中单位”5人本【麦卡贡行动】史诗困难模式（点灯）最后首领【麦卡贡国王】必掉。",
    "魔兽小知识：“喑声翔渊者”120级版本纳萨塔尔的稀有【无声者】小几率掉落，掉率0.5%。",
    "魔兽小知识：“法比乌斯”120级版本纳萨塔尔与【法比乌斯】同框自拍获取。",
    "魔兽小知识：“四风幼龙”120级版本奥丹姆稀有【四风之龙艾夏克】小几率掉落。",
    "魔兽小知识：“馨劳”120级版本锦绣谷稀有【丹心魁麟昂德】小几率掉落。",
    "魔兽小知识：“茉莉”120级版本沃顿稀有【食沙者克劳洛克】小几率掉落。",
    "魔兽小知识：“恶毒工蜂”120级版本锦绣谷稀有【亥离】小几率掉落。",
    "魔兽小知识：“亥离之嗣”120级版本奥丹姆稀有【食尸者】小几率掉落。",
    "魔兽小知识：“尼奥罗萨全视者”120级团本【尼奥罗萨】史诗难度首领【腐蚀者恩佐斯】小几率掉落，掉率1%。",
    "魔兽小知识：“皎白云端翔龙”120级版本锦绣谷稀有【皎白云端翔龙】小几率掉落。",
    "魔兽小知识：“废土劫掠者”120级版本奥丹姆稀有【腐肉9999】小几率掉落。",
    "魔兽小知识：“轻盈的迅蹄驼”120级版本沃顿喂食【海滩叶蔬沙拉】必掉。",
    "魔兽小知识：“任衙的忠犬”120级版本锦绣谷魔古入侵时稀有【犬师任衙】小几率掉落。",
    "魔兽小知识：“邮件吞噬者”120级版本惊魂幻象【开启邮箱】刷新出稀有【邮件吞噬者】必掉。",
}

local currentIndex = 1

local originSendMessage = F.SendMessage
F.SendMessage = function(self, text, chatType, ...)
    if not F.db.SmartReply.OnlyWhisper or chatType == 'WHISPER' then
        if text and text ~= '' then
            local fixerText

            if F.db.SmartReply.ContentMode == 2 then
                fixerText = fixer[currentIndex]

                currentIndex = currentIndex + 1
                if currentIndex > #fixer then
                    currentIndex = 1
                end
            else
                fixerText = fixer[random(#fixer)]
            end

            local prefix = random(2)
            if prefix == 1 then
                text = fixerText .. F.db.SmartReply.Delimiter .. text
            else
                text = text .. F.db.SmartReply.Delimiter .. fixerText
            end
        end
    end

    return originSendMessage(self, text, chatType, ...)
end

P["SmartReply"] = {
    ["OnlyWhisper"] = true,
    ["Delimiter"] = '-',
    ["ContentMode"] = 1,
}

F.Options.args.Plugins.args.SmartReply = {
    name = "自动前后缀",
    type = 'group',
    get = function(info) return F.db.SmartReply[info[#info]] end,
    set = function(info, value) F.db.SmartReply[info[#info]] = value end,
    args = {
        OnlyWhisper = {
            order = 1,
            name = "仅在密语添加",
            type = 'toggle',
        },
        Delimiter = {
            order = 2,
            name = "分隔符",
            type = 'input',
        },
        ContentMode = {
            order = 3,
            name = "内容选择模式",
            type = 'select',
            style = 'radio',
            values = {
                [1] = "随机",
                [2] = "顺序",
            },
        },
    },
}
