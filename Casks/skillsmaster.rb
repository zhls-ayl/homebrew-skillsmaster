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
  version "0.2.18"
  sha256 "128f60781ec8ebf7654431a10da50013e2abffe954f1efbd4f7aa31dbf74b279"

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
