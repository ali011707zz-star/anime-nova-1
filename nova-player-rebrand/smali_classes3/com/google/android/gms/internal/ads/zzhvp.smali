.class public final Lcom/google/android/gms/internal/ads/zzhvp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhbr;[B[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhjo;)Lcom/google/android/gms/internal/ads/zzhbr;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjo;->zzc(Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhlb;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzg()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/ads/zzhbr;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjc;->zzc(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhba;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhba;->zza(Lcom/google/android/gms/internal/ads/zzian;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhbr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhvp;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhvq;->zzc(Lcom/google/android/gms/internal/ads/zzhlb;)[B

    move-result-object v2

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhvq;->zzd(Lcom/google/android/gms/internal/ads/zzhlb;)[B

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/gms/internal/ads/zzhvp;-><init>(Lcom/google/android/gms/internal/ads/zzhbr;[B[B)V

    return-object v1
.end method


# virtual methods
.method public final zza([B)[B
    .locals 0

    .line 0
    const/4 p1, 0x0

    throw p1
.end method
