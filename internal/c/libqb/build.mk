
libqb-objs-y += $(PATH_LIBQB)/src/threading.o
libqb-objs-y += $(PATH_LIBQB)/src/buffer.o
libqb-objs-y += $(PATH_LIBQB)/src/filepath.o
libqb-objs-y += $(PATH_LIBQB)/src/datetime.o
libqb-objs-y += $(PATH_LIBQB)/src/rounding.o

libqb-objs-$(DEP_HTTP) += $(PATH_LIBQB)/src/http.o
libqb-objs-y$(DEP_HTTP) += $(PATH_LIBQB)/src/http-stub.o

libqb-objs-y += $(PATH_LIBQB)/src/threading-$(PLATFORM).o

libqb-objs-y$(DEP_CONSOLE_ONLY) += $(PATH_LIBQB)/src/glut-main-thread.o
libqb-objs-y$(DEP_CONSOLE_ONLY) += $(PATH_LIBQB)/src/glut-message.o
libqb-objs-y$(DEP_CONSOLE_ONLY) += $(PATH_LIBQB)/src/glut-msg-queue.o

libqb-objs-$(DEP_CONSOLE_ONLY) += $(PATH_LIBQB)/src/console-only-main-thread.o

ifeq ($(OS),osx)
libqb-objs-y$(DEP_CONSOLE_ONLY) += $(PATH_LIBQB)/src/mac-key-monitor.o
endif

CLEAN_LIST += $(libqb-objs-y) $(libqb-objs-yy) $(libqb-objs-)
