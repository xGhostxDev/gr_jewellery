local Translations = {
    error = {
        fingerprints    = 'لقد تركت بصمة ..',
        security_active = 'نظام الأمان نشط ..',
        minimum_police  = 'الحد الأدنى المطلوب هو٪ {value} شرطة',
        vitrine_hit     = 'تم بالفعل إصابة حالة العرض هذه',
        wrong_weapon    = 'سلاحك ليس قويا بما فيه الكفاية ..',
        to_much         = 'جيوبك ممتلئة ..',
        fail_therm      = 'لم تقم بتطبيق الثرمايت بشكل صحيح ..',
        wrong_item      = 'ليس لديك العنصر الصحيح ..',
        too_far         = 'انت بعيد جدا..',
        stores_open     = 'يجب أن أحاول بعد إغلاق المتجر ..',
        fail_hack       = 'فشلت في اختراق نظام الأمن ..',
        skill_fail      = 'مهارة٪ {value} ليست عالية بما يكفي ..'
    },
    success = {
        thermite = 'قمت بتطبيق الثرمايت بشكل صحيح ..',
        store_hit_threestore = 'تنفجر المصاهر ، ستفتح الأبواب قريبا ..',
        store_hit_onestore = 'تنفجر المصاهر ، يجب أن تفتح الأبواب لمدة٪ {value} دقيقة',
        hacked_threestore = 'تم الاختراق بنجاح ، يجب أن تكون جميع الأبواب مفتوحة ..',
        hacked_onestore = 'تم الاختراق بنجاح ، تم تعطيل الأمان'
    },
    info = {
        smashing_progress = 'تحطيم علبة العرض',
        hacking_attempt = 'الاتصال بنظام الأمان ..',
        one_store_warning = 'عجل! سيغلق المتجر خلال٪ {value} دقيقة'
    },
    general = {
        target_label = 'تحطيم حالة العرض',
        drawtextui_grab = '[E] تحطيم حالة العرض',
        drawtextui_broken = 'حالة العرض مكسورة'
    }
}

-- Simple locale system
Lang = Lang or {}
Lang.Locale = 'ar'

function Lang:t(str, args)
    local keys = {}
    for key in string.gmatch(str, '([^.]+)') do
        table.insert(keys, key)
    end
    
    local value = Translations
    for _, key in ipairs(keys) do
        value = value[key]
        if not value then
            return str
        end
    end
    
    if type(value) == 'string' and args then
        for k, v in pairs(args) do
            value = value:gsub('%%{' .. k .. '}', tostring(v))
        end
    end
    
    return value
end