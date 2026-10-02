package k4;

import jc.l;

/* compiled from: BlockedWordEntity.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: id, reason: collision with root package name */
    private long f9903id;
    private final String word;

    public a(String str) {
        l.f(str, "word");
        this.word = str;
    }

    public final long a() {
        return this.f9903id;
    }

    public final String b() {
        return this.word;
    }

    public final void c(long j10) {
        this.f9903id = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && l.a(this.word, ((a) obj).word);
    }

    public int hashCode() {
        return this.word.hashCode();
    }

    public String toString() {
        return "BlockedWordEntity(word=" + this.word + ')';
    }
}
