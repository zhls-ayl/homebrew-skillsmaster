# Homebrew Cask for SkillsMaster release assets
#
# 发布源：
#   https://github.com/zhls-ayl/SkillsMaster/releases
#
# 用户安装命令：
#   brew tap zhls-ayl/skillsmaster
#   brew install --cask skillsmaster
#
# 每次发布新版本时，需要更新：
#   - version
#   - sha256（对应 universal.zip）

cask "skillsmaster" do
  version "0.2.5"
  sha256 "6e0974f53f007926542f2cb74a7e9fbc1a5f9826b1189ac5464f2464af45bdb9"

  url "https://github.com/zhls-ayl/SkillsMaster/releases/download/v#{version}/SkillsMaster-v#{version}-universal.zip"
  name "SkillsMaster"
  desc "Native macOS application for managing AI code agent skills"
  homepage "https://github.com/zhls-ayl/SkillsMaster"

  depends_on macos: ">= :sonoma"

  app "SkillsMaster.app"

  zap trash: [
    "~/.agents/.skill-lock.json",
  ]
end
