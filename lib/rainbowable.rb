module Rainbowable
  def rainbow
    #1. to_sで自分自身をstring型に
    str = self.to_s

    # 色つけ順に格納する配列を用意
    count = 0
    colored_chars = []

    #2. 取得した文字列を1文字ずつループ処理する
    str.each_char do |char|
      color = 31 + count % 6
      # 各文字の手前にANSIエスケープシーケンスを付与して、配列に追加
      colored_chars << "\e[#{color}m#{char}"
      count += 1
    end
    ret = colored_chars.join
    ret += "\e[0m"
  end
end
