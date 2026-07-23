.class public abstract Lcom/google/android/gms/internal/ads/zzhdj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhku;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhba;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhjy;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzhjb;

.field private static final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhdg;->zza:Lcom/google/android/gms/internal/ads/zzhdg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhdf;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhas;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhdj;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zzb:Lcom/google/android/gms/internal/ads/zzhqb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhos;->zze()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v1

    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhjl;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzidk;)Lcom/google/android/gms/internal/ads/zzhba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhdj;->zzc:Lcom/google/android/gms/internal/ads/zzhba;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhdi;->zza:Lcom/google/android/gms/internal/ads/zzhdi;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhdj;->zzd:Lcom/google/android/gms/internal/ads/zzhjy;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhdh;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhdj;->zze:Lcom/google/android/gms/internal/ads/zzhjb;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzhdj;->zzf:I

    return-void
.end method

.method public static zza(Z)V
    .locals 8

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzhdj;->zzf:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhgo;->$r8$clinit:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkg;->zza()Lcom/google/android/gms/internal/ads/zzhkg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgo;->zza(Lcom/google/android/gms/internal/ads/zzhkg;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhdj;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkc;->zza()Lcom/google/android/gms/internal/ads/zzhkc;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AES128_GCM"

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhfk;->zza:Lcom/google/android/gms/internal/ads/zzhdm;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhdk;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhdk;-><init>([B)V

    const/16 v4, 0xc

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhdk;->zzb(I)Lcom/google/android/gms/internal/ads/zzhdk;

    const/16 v5, 0x10

    .line 11
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhdk;->zza(I)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 12
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhdk;->zzc(I)Lcom/google/android/gms/internal/ads/zzhdk;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhdl;->zzc:Lcom/google/android/gms/internal/ads/zzhdl;

    .line 13
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhdk;->zzd(Lcom/google/android/gms/internal/ads/zzhdl;)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhdk;->zze()Lcom/google/android/gms/internal/ads/zzhdm;

    move-result-object v2

    const-string v7, "AES128_GCM_RAW"

    .line 15
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AES256_GCM"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhfk;->zzb:Lcom/google/android/gms/internal/ads/zzhdm;

    .line 16
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhdk;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhdk;-><init>([B)V

    .line 17
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhdk;->zzb(I)Lcom/google/android/gms/internal/ads/zzhdk;

    const/16 v3, 0x20

    .line 18
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhdk;->zza(I)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 19
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhdk;->zzc(I)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 20
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhdk;->zzd(Lcom/google/android/gms/internal/ads/zzhdl;)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhdk;->zze()Lcom/google/android/gms/internal/ads/zzhdm;

    move-result-object v2

    const-string v3, "AES256_GCM_RAW"

    .line 22
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkc;->zzd(Ljava/util/Map;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjz;->zza()Lcom/google/android/gms/internal/ads/zzhjz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhdj;->zzd:Lcom/google/android/gms/internal/ads/zzhjy;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhdm;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjz;->zzb(Lcom/google/android/gms/internal/ads/zzhjy;Ljava/lang/Class;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjx;->zza()Lcom/google/android/gms/internal/ads/zzhjx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhdj;->zze:Lcom/google/android/gms/internal/ads/zzhjb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjx;->zzb(Lcom/google/android/gms/internal/ads/zzhjb;Ljava/lang/Class;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhdj;->zzc:Lcom/google/android/gms/internal/ads/zzhba;

    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhjc;->zzf(Lcom/google/android/gms/internal/ads/zzhba;IZ)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
