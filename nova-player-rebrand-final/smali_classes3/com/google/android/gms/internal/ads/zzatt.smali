.class public final Lcom/google/android/gms/internal/ads/zzatt;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzats;Lcom/google/android/gms/internal/ads/zzatq;J)V
    .locals 7

    .line 0
    const v0, 0x7fbd7a3e

    not-int v1, v0

    const v2, 0x5111440

    and-int/2addr v1, v2

    const v2, 0x19a9a08e

    or-int/2addr v1, v2

    const v2, 0x345c1c60

    and-int/2addr v0, v2

    const v2, 0x70ed8a21

    or-int/2addr v0, v2

    add-int/2addr v1, v0

    const v0, -0x7917e7f4

    sub-int/2addr v1, v0

    const v0, 0x606ed7f6

    const v2, 0x682dfed6

    rem-int/2addr v2, v0

    const v0, 0x557fb7ee

    not-int v3, v0

    const v4, 0x494c21e5

    and-int/2addr v3, v4

    const v4, 0x2802c404

    or-int/2addr v3, v4

    const v4, 0x415c31e1

    and-int/2addr v0, v4

    const v4, 0x2090120c

    or-int/2addr v0, v4

    add-int/2addr v3, v0

    const v0, 0x69a8f326

    sub-int/2addr v3, v0

    const v0, 0x4ce5ca53    # 1.2047631E8f

    const v4, 0x6d1bcf1c

    rem-int/2addr v4, v0

    xor-int v0, v1, v2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzats;->zza()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzatq;->zza()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    xor-int p1, v3, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p1

    const-string p1, "bk3t6gFTc30="

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    invoke-static {p3}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzats;Ljava/lang/Throwable;)V
    .locals 3

    .line 0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzats;->zza()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "bk0="

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    return-void
.end method
