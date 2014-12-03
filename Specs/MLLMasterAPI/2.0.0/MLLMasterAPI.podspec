Pod::Spec.new do |s|
  s.name             = "MLLMasterAPI"
  s.version          = "2.0.0"
  s.summary          = "A MLLMasterAPI used on iOS."

  s.homepage         = "http://www.meilele.com"
  s.license          = 'MIT'
  s.author           = { "Meilele iOS Dev Team" => "iosdev@meilele.com" }
  s.source           = { :svn => "svn://192.168.0.36/iOS/MeileleAPI/MLLMasterAPI/trunk"}
  s.platform         = :ios, '7.0'
  s.requires_arc     = true

#s.source_files     = 'MLLMasterAPI/**','MLLMasterAPI/**/*.{d,h,m}','MLLMasterAPI/**/**/*.{d,h,m}'

#s.default_subspec = 'MeileleALLHouseBuy'

################################################################################

  s.subspec 'MeileleALLHouseBuy' do |meileleallhousebuy|
    meileleallhousebuy.source_files = 'MLLMasterAPI/MeileleALLHouseBuy/*.{d,h,m}'


        meileleallhousebuy.subspec 'Entity' do |entity|
        entity.source_files = 'MLLMasterAPI/MeileleALLHouseBuy/**/*.{d,h,m}'
        end
   end

################################################################################

    s.subspec 'MeileleGoodInfo' do |meilelegoodinfo|
    meilelegoodinfo.source_files = 'MLLMasterAPI/MeileleGoodInfo/*.{d,h,m}'


        meilelegoodinfo.subspec 'Entity' do |entity|
        entity.source_files = 'MLLMasterAPI/MeileleGoodInfo/**/*.{d,h,m}'
        end

    end

################################################################################

    s.subspec 'MeileleGoodsList' do |meilelegoodslist|
    meilelegoodslist.source_files = 'MLLMasterAPI/MeileleGoodsList/*.{d,h,m}'


        meilelegoodslist.subspec 'Entity' do |entity|
        entity.source_files = 'MLLMasterAPI/MeileleGoodsList/Entity/*.{d,h,m}'

            entity.subspec 'GoodsListEntity' do |goodslistentity|
            goodslistentity.source_files = 'MLLMasterAPI/MeileleGoodsList/Entity/GoodsListEntity/*.{d,h,m}'
            end

            entity.subspec 'ScreenConditionEntity' do |screenconditionentity|
            screenconditionentity.source_files = 'MLLMasterAPI/MeileleGoodsList/Entity/ScreenConditionEntity/*.{d,h,m}'
            end

        end

        meilelegoodslist.subspec 'GoodsListAPI' do |goodslistapi|
        goodslistapi.source_files = 'MLLMasterAPI/MeileleGoodsList/GoodsListAPI/*.{d,h,m}'
        end

        meilelegoodslist.subspec 'GoodsListCategory' do |goodslistcategory|
        goodslistcategory.source_files = 'MLLMasterAPI/MeileleGoodsList/GoodsListCategory/*.{d,h,m}'
        end

        meilelegoodslist.subspec 'GoodsListScreeningConditionAPI' do |goodslistconditionapi|
        goodslistconditionapi.source_files = 'MLLMasterAPI/MeileleGoodsList/GoodsListScreeningConditionAPI/*.{d,h,m}'
        end

    end

################################################################################

    s.subspec 'MeileleHTTPBase' do |meilelehttpbase|
    meilelehttpbase.source_files = 'MLLMasterAPI/MeileleHTTPBase/*.{d,h,m}'
    end

################################################################################

    s.subspec 'MeileleHomepage' do |meilelehomepage|
    meilelehomepage.source_files = 'MLLMasterAPI/MeileleHomepage/*.{d,h,m}'

        meilelehomepage.subspec 'Entity' do |entity|
        entity.source_files = 'MLLMasterAPI/MeileleHomepage/Entity/*.{d,h,m}'
        end

    end

################################################################################

    s.subspec 'MeileleHTTPConfigure' do |meilelehttpconfigure|
    meilelehttpconfigure.source_files = 'MLLMasterAPI/MeileleHTTPConfigure/*.{d,h,m}'
    end

################################################################################

    s.subspec 'MeileleSearchAPI' do |meilelesearchapi|
    meilelesearchapi.source_files = 'MLLMasterAPI/MeileleSearchAPI/*.{d,h,m}'

        meilelesearchapi.subspec 'Entity' do |entity|
        entity.source_files = 'MLLMasterAPI/MeileleSearchAPI/Entity/*.{d,h,m}'
        end

    end

################################################################################

    s.subspec 'MeileleShoppingCart' do |meileleshoppingcart|
    meileleshoppingcart.source_files = 'MLLMasterAPI/MeileleShoppingCart/*.{d,h,m}'

        meileleshoppingcart.subspec 'Entity' do |entity|
        entity.source_files = 'MLLMasterAPI/MeileleShoppingCart/Entity/*.{d,h,m}'
        end

    end

################################################################################

    s.subspec 'MeileleUser' do |meileleuser|
    meileleuser.source_files = 'MLLMasterAPI/MeileleUser/*.{d,h,m}'

        meileleuser.subspec 'Entity' do |entity|
        entity.source_files = 'MLLMasterAPI/MeileleUser/Entity/*.{d,h,m}'
        end

    end

################################################################################

    s.subspec 'MLLEncryptByMD5Service' do |mllencryptbymd5service|
    mllencryptbymd5service.source_files = 'MLLMasterAPI/MLLEncryptByMD5Service/*.{d,h,m}'
    end

################################################################################

    s.subspec 'MLLEntityBase' do |mllentitybase|
    mllentitybase.source_files = 'MLLMasterAPI/MLLEntityBase/*.{d,h,m}'
    end

################################################################################

    s.subspec 'NetworkService' do |networkservice|
    networkservice.source_files = 'MLLMasterAPI/NetworkService/*.{d,h,m}'
    end

################################################################################

s.frameworks       = 'Foundation', 'UIKit'

s.dependency 'MeileleNetworkSupport', '~> 0.3.2'
s.dependency 'MeileleNetworkSupport/RAC', '~> 0.3.2'
s.dependency 'MeileleNetworkSupport/Logger', '~> 0.3.2'
s.dependency 'JSONModel'


end