.class public abstract Lcom/google/android/gms/internal/ads/zzhdz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhku;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhjb;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhba;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhdy;->zza:Lcom/google/android/gms/internal/ads/zzhdy;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhdw;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhas;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhdz;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhdx;->zza:Lcom/google/android/gms/internal/ads/zzhdx;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhdz;->zzc:Lcom/google/android/gms/internal/ads/zzhjb;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zzb:Lcom/google/android/gms/internal/ads/zzhqb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpa;->zze()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v1

    const-string v3, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhjl;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzidk;)Lcom/google/android/gms/internal/ads/zzhba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhdz;->zzd:Lcom/google/android/gms/internal/ads/zzhba;

    return-void
.end method

.method public static zza(Z)V
    .locals 4

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhhb;->$r8$clinit:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkg;->zza()Lcom/google/android/gms/internal/ads/zzhkg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhb;->zza(Lcom/google/android/gms/internal/ads/zzhkg;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhdz;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjx;->zza()Lcom/google/android/gms/internal/ads/zzhjx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhdz;->zzc:Lcom/google/android/gms/internal/ads/zzhjb;

    const-class v2, Lcom/google/android/gms/internal/ads/zzheb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjx;->zzb(Lcom/google/android/gms/internal/ads/zzhjb;Ljava/lang/Class;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkc;->zza()Lcom/google/android/gms/internal/ads/zzhkc;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhea;->zza:Lcom/google/android/gms/internal/ads/zzhea;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzheb;->zzb(Lcom/google/android/gms/internal/ads/zzhea;)Lcom/google/android/gms/internal/ads/zzheb;

    move-result-object v2

    const-string v3, "CHACHA20_POLY1305"

    .line 10
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhea;->zzc:Lcom/google/android/gms/internal/ads/zzhea;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzheb;->zzb(Lcom/google/android/gms/internal/ads/zzhea;)Lcom/google/android/gms/internal/ads/zzheb;

    move-result-object v2

    const-string v3, "CHACHA20_POLY1305_RAW"

    .line 11
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkc;->zzd(Ljava/util/Map;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhdz;->zzd:Lcom/google/android/gms/internal/ads/zzhba;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhjc;->zzb(Lcom/google/android/gms/internal/ads/zzhba;Z)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering ChaCha20Poly1305 is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
