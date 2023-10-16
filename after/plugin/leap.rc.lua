 local status, leap = pcall(require, "leap")
 if (not status) then return end

 leap.setup {
   special_keys = {
   repeat_search = '<enter>',
   next_phase_one_target = '<enter>',
   next_target = {'<enter>', ';'},
   prev_target = {'<tab>', ','},
   next_group = '<space>',
   prev_group = '<tab>',
   multi_accept = '<enter>',
   multi_revert = '<backspace>',
   }
 }
