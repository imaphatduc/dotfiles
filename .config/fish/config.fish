if status is-interactive
    # Commands to run in interactive sessions can go here

    #     set -g theme_display_git no
#     set -g theme_display_git_dirty no
#     set -g theme_display_git_untracked no
#     set -g theme_display_git_ahead_verbose yes
#     set -g theme_display_git_dirty_verbose yes
#     set -g theme_display_git_stashed_verbose yes
      set -g theme_display_git_default_branch yes
      set -g theme_git_default_branches main master trunk
#     set -g theme_git_worktree_support yes
#     set -g theme_display_vagrant yes
#     set -g theme_display_docker_machine no
#     set -g theme_display_k8s_context yes
#     set -g theme_display_k8s_namespace no
#     set -g theme_display_aws_vault_profile yes
#     set -g theme_display_hg yes
#     set -g theme_display_virtualenv no
#     set -g theme_display_nix no
#     set -g theme_display_ruby no
      set -g theme_display_user yes
      set -g theme_display_hostname yes
#     set -g theme_display_sudo_user yes
      set -g theme_display_vi yes
#     set -g theme_display_node yes
      set -g theme_avoid_ambiguous_glyphs yes
      set -g theme_powerline_fonts yes
      set -g theme_nerd_fonts yes
      set -g theme_show_exit_status yes
#     set -g theme_display_jobs_verbose yes
#     set -g default_user your_normal_user
      set -g theme_color_scheme dracula
#     set -g fish_prompt_pwd_dir_length 0
#     set -g theme_project_dir_length 1
      set -g theme_newline_cursor yes
      set -g theme_newline_prompt '*λ '
end

alias l='lsd -l'
alias la='lsd -a'
alias lah='lsd -lah'

#alias clear='clear && neofetch'
alias clr='clear && nerdfetch'

alias prjs='cd ~/Documents/Projects/'
alias qrc='nvim ~/.config/qtile/config.py'
alias barc='nvim ~/.config/polybar/config.ini'
alias alarc='nvim ~/.config/alacritty/alacritty.yml'
alias nvrc='nvim ~/.config/nvim/init.lua'
alias nvplrcs='cd ~/.config/nvim/lua/imaphatduc/plugins'
alias nvplgs='nvim ~/.config/nvim/lua/imaphatduc/plugins.lua'

alias minecraft='java -jar Documents/Shiginima\ Launcher\ SE.v4400.jar'

### Backup config files ###
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

starship init fish | source

