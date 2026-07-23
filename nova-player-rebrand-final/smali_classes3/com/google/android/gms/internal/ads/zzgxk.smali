.class abstract Lcom/google/android/gms/internal/ads/zzgxk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static final zza(Ljava/io/File;Lcom/google/android/gms/internal/ads/zzgup;Lcom/google/android/gms/internal/ads/zzgxb;)Ljava/io/FileOutputStream;
    .locals 1

    .line 1
    new-instance p2, Ljava/io/FileOutputStream;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxj;->zza:Lcom/google/android/gms/internal/ads/zzgxj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgub;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p2, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object p2
.end method
