cask 'sip' do
  if MacOS.version <= :sierra
    version '1.1.6'
    sha256 'bb170a54090aab5703388a3e7a22e9cf4e4d98e84f5658893e1e6f9677b9a51e'
  else
    version '2.0.8'
    sha256 '58da8251031424c4b99861d8fbbcd1b75e11649db9bfd71ca408bdc675b4f263'
  end

  url "https://sipapp.io/updates/v#{version.major}/sip-#{version}.zip"
  appcast "https://sipapp.io/updates/v#{version.major}/sip.xml"
  name 'Sip'
  homepage 'https://sipapp.io/'

  depends_on macos: '>= :sierra'

  app 'Sip.app'

  zap trash: [
               '~/Library/Application Support/Sip',
               '~/Library/Application Support/io.sipapp.Sip-paddle',
               '~/Library/Caches/io.sipapp.Sip-paddle',
               '~/Library/Cookies/io.sipapp.Sip-paddle.binarycookies',
               '~/Library/Preferences/io.sipapp.Sip-paddle.plist',
               '~/Library/Saved Application State/io.sipapp.Sip-paddle.savedState',
             ]
end
