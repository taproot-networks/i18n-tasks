module I18n::Tasks
  module Command
    module Commands
      module EqBase
        include Command::Collection

        cmd :eq_base,
            args: '[locale ...]',
            desc: t('i18n_tasks.cmd.desc.eq_base'),
            opt:  cmd_opts(:locales, :out_format)

        def eq_base(opt = {})
          print_forest i18n.eq_base_keys(opt), opt, :eq_base_keys
        end
      end
    end
  end
end
