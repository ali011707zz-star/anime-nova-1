.class public abstract Lcom/google/android/gms/internal/ads/zzhds;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhku;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhjb;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhjy;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzhba;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhdp;->zza:Lcom/google/android/gms/internal/ads/zzhdp;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhdo;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhas;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhds;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhdr;->zza:Lcom/google/android/gms/internal/ads/zzhdr;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhds;->zzc:Lcom/google/android/gms/internal/ads/zzhjb;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhdq;->zza:Lcom/google/android/gms/internal/ads/zzhdq;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhds;->zzd:Lcom/google/android/gms/internal/ads/zzhjy;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zzb:Lcom/google/android/gms/internal/ads/zzhqb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhow;->zze()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v1

    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhjl;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzidk;)Lcom/google/android/gms/internal/ads/zzhba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhds;->zze:Lcom/google/android/gms/internal/ads/zzhba;

    return-void
.end method

.method public static zza(Z)V
    .locals 7

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhgv;->$r8$clinit:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkg;->zza()Lcom/google/android/gms/internal/ads/zzhkg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgv;->zza(Lcom/google/android/gms/internal/ads/zzhkg;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkc;->zza()Lcom/google/android/gms/internal/ads/zzhkc;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhdt;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhdt;-><init>([B)V

    const/16 v4, 0x10

    .line 7
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhdt;->zza(I)Lcom/google/android/gms/internal/ads/zzhdt;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhdu;->zza:Lcom/google/android/gms/internal/ads/zzhdu;

    .line 8
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhdt;->zzb(Lcom/google/android/gms/internal/ads/zzhdu;)Lcom/google/android/gms/internal/ads/zzhdt;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhdt;->zzc()Lcom/google/android/gms/internal/ads/zzhdv;

    move-result-object v2

    const-string v6, "AES128_GCM_SIV"

    .line 10
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhdt;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhdt;-><init>([B)V

    .line 11
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhdt;->zza(I)Lcom/google/android/gms/internal/ads/zzhdt;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhdu;->zzc:Lcom/google/android/gms/internal/ads/zzhdu;

    .line 12
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhdt;->zzb(Lcom/google/android/gms/internal/ads/zzhdu;)Lcom/google/android/gms/internal/ads/zzhdt;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhdt;->zzc()Lcom/google/android/gms/internal/ads/zzhdv;

    move-result-object v2

    const-string v6, "AES128_GCM_SIV_RAW"

    .line 14
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhdt;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhdt;-><init>([B)V

    const/16 v6, 0x20

    .line 15
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhdt;->zza(I)Lcom/google/android/gms/internal/ads/zzhdt;

    .line 16
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhdt;->zzb(Lcom/google/android/gms/internal/ads/zzhdu;)Lcom/google/android/gms/internal/ads/zzhdt;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhdt;->zzc()Lcom/google/android/gms/internal/ads/zzhdv;

    move-result-object v2

    const-string v5, "AES256_GCM_SIV"

    .line 18
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhdt;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhdt;-><init>([B)V

    .line 19
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhdt;->zza(I)Lcom/google/android/gms/internal/ads/zzhdt;

    .line 20
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhdt;->zzb(Lcom/google/android/gms/internal/ads/zzhdu;)Lcom/google/android/gms/internal/ads/zzhdt;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhdt;->zzc()Lcom/google/android/gms/internal/ads/zzhdv;

    move-result-object v2

    const-string v3, "AES256_GCM_SIV_RAW"

    .line 22
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkc;->zzd(Ljava/util/Map;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjz;->zza()Lcom/google/android/gms/internal/ads/zzhjz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhds;->zzd:Lcom/google/android/gms/internal/ads/zzhjy;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhdv;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjz;->zzb(Lcom/google/android/gms/internal/ads/zzhjy;Ljava/lang/Class;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjx;->zza()Lcom/google/android/gms/internal/ads/zzhjx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhds;->zzc:Lcom/google/android/gms/internal/ads/zzhjb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjx;->zzb(Lcom/google/android/gms/internal/ads/zzhjb;Ljava/lang/Class;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhds;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhds;->zze:Lcom/google/android/gms/internal/ads/zzhba;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhjc;->zzb(Lcom/google/android/gms/internal/ads/zzhba;Z)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering AES GCM SIV is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
