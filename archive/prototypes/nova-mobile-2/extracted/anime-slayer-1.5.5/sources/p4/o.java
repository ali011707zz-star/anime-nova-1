package p4;

/* compiled from: ScheduleModal.kt */
/* loaded from: classes.dex */
public abstract class o {

    /* compiled from: ScheduleModal.kt */
    /* loaded from: classes.dex */
    public static final class a extends o {
        private final p anime;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(p pVar) {
            super(null);
            jc.l.f(pVar, "anime");
            this.anime = pVar;
        }

        public final p a() {
            return this.anime;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && jc.l.a(this.anime, ((a) obj).anime);
        }

        public int hashCode() {
            return this.anime.hashCode();
        }

        public String toString() {
            return "AnimeItem(anime=" + this.anime + ')';
        }
    }

    /* compiled from: ScheduleModal.kt */
    /* loaded from: classes.dex */
    public static final class b extends o {
        private final String day;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str) {
            super(null);
            jc.l.f(str, "day");
            this.day = str;
        }

        public final String a() {
            return this.day;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && jc.l.a(this.day, ((b) obj).day);
        }

        public int hashCode() {
            return this.day.hashCode();
        }

        public String toString() {
            return "SeparatorItem(day=" + this.day + ')';
        }
    }

    public o() {
    }

    public /* synthetic */ o(jc.g gVar) {
        this();
    }
}
