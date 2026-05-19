module StartHelper
    def version
        #MAJOR.MINOR.PATCH
        #MAJOR:互換性を壊す変更が加えられた場合に増加。
        #MINOR: 後方互換性を維持した機能追加があった場合に増加
        #PATCH:バグ修正や小規模な変更が行われた場合に増加。
        #例: 1.0.0 → 1.1.0 (新機能追加)、1.1.0 → 1.1.1 (バグ修正)。
        #MAJORはカラム名の変更やメソッドの変更、APIの変更があったら増加。
        ver="1.3.1"
    end
end
