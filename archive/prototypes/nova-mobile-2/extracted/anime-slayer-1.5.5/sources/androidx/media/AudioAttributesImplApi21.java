package androidx.media;

import android.annotation.TargetApi;
import android.media.AudioAttributes;

@TargetApi(21)
/* loaded from: classes.dex */
class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: a, reason: collision with root package name */
    public AudioAttributes f2546a;

    /* renamed from: b, reason: collision with root package name */
    public int f2547b = -1;

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f2546a.equals(((AudioAttributesImplApi21) obj).f2546a);
        }
        return false;
    }

    public int hashCode() {
        return this.f2546a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f2546a;
    }
}
