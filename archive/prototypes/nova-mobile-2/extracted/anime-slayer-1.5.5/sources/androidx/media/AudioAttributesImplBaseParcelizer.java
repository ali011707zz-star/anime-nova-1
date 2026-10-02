package androidx.media;

import androidx.versionedparcelable.VersionedParcel;

/* loaded from: classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f2548a = versionedParcel.p(audioAttributesImplBase.f2548a, 1);
        audioAttributesImplBase.f2549b = versionedParcel.p(audioAttributesImplBase.f2549b, 2);
        audioAttributesImplBase.f2550c = versionedParcel.p(audioAttributesImplBase.f2550c, 3);
        audioAttributesImplBase.f2551d = versionedParcel.p(audioAttributesImplBase.f2551d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.x(false, false);
        versionedParcel.F(audioAttributesImplBase.f2548a, 1);
        versionedParcel.F(audioAttributesImplBase.f2549b, 2);
        versionedParcel.F(audioAttributesImplBase.f2550c, 3);
        versionedParcel.F(audioAttributesImplBase.f2551d, 4);
    }
}
