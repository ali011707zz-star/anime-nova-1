.class public abstract Lcom/google/android/gms/internal/ads/zzhmg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhku;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhku;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhba;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzhjy;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzhjb;

.field private static final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhmc;->zza:Lcom/google/android/gms/internal/ads/zzhmc;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhlx;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhmb;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmg;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhmf;->zza:Lcom/google/android/gms/internal/ads/zzhmf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmg;->zzc:Lcom/google/android/gms/internal/ads/zzhku;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zzb:Lcom/google/android/gms/internal/ads/zzhqb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpv;->zzh()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v3, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhjl;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzidk;)Lcom/google/android/gms/internal/ads/zzhba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmg;->zzd:Lcom/google/android/gms/internal/ads/zzhba;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhme;->zza:Lcom/google/android/gms/internal/ads/zzhme;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmg;->zze:Lcom/google/android/gms/internal/ads/zzhjy;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhmd;->zza:Lcom/google/android/gms/internal/ads/zzhmd;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmg;->zzf:Lcom/google/android/gms/internal/ads/zzhjb;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzhmg;->zzg:I

    return-void
.end method

.method public static zza(Z)V
    .locals 11

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzhmg;->zzg:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhnl;->$r8$clinit:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkg;->zza()Lcom/google/android/gms/internal/ads/zzhkg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhnl;->zza(Lcom/google/android/gms/internal/ads/zzhkg;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhmg;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhmg;->zzc:Lcom/google/android/gms/internal/ads/zzhku;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkc;->zza()Lcom/google/android/gms/internal/ads/zzhkc;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "HMAC_SHA256_128BITTAG"

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhmx;->zza:Lcom/google/android/gms/internal/ads/zzhmk;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhmh;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhmh;-><init>([B)V

    const/16 v4, 0x20

    .line 11
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmh;->zza(I)Lcom/google/android/gms/internal/ads/zzhmh;

    const/16 v5, 0x10

    .line 12
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhmh;->zzb(I)Lcom/google/android/gms/internal/ads/zzhmh;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhmj;->zzd:Lcom/google/android/gms/internal/ads/zzhmj;

    .line 13
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhmh;->zzc(Lcom/google/android/gms/internal/ads/zzhmj;)Lcom/google/android/gms/internal/ads/zzhmh;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhmi;->zzc:Lcom/google/android/gms/internal/ads/zzhmi;

    .line 14
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhmh;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhmh;->zze()Lcom/google/android/gms/internal/ads/zzhmk;

    move-result-object v2

    const-string v8, "HMAC_SHA256_128BITTAG_RAW"

    .line 16
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhmh;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhmh;-><init>([B)V

    .line 17
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmh;->zza(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmh;->zzb(I)Lcom/google/android/gms/internal/ads/zzhmh;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhmj;->zza:Lcom/google/android/gms/internal/ads/zzhmj;

    .line 19
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhmh;->zzc(Lcom/google/android/gms/internal/ads/zzhmj;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 20
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhmh;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhmh;->zze()Lcom/google/android/gms/internal/ads/zzhmk;

    move-result-object v2

    const-string v9, "HMAC_SHA256_256BITTAG"

    .line 22
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhmh;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhmh;-><init>([B)V

    .line 23
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmh;->zza(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 24
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmh;->zzb(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 25
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhmh;->zzc(Lcom/google/android/gms/internal/ads/zzhmj;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 26
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhmh;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhmh;->zze()Lcom/google/android/gms/internal/ads/zzhmk;

    move-result-object v2

    const-string v7, "HMAC_SHA256_256BITTAG_RAW"

    .line 28
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhmh;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhmh;-><init>([B)V

    const/16 v7, 0x40

    .line 29
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhmh;->zza(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 30
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhmh;->zzb(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 31
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhmh;->zzc(Lcom/google/android/gms/internal/ads/zzhmj;)Lcom/google/android/gms/internal/ads/zzhmh;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzhmi;->zze:Lcom/google/android/gms/internal/ads/zzhmi;

    .line 32
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhmh;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhmh;->zze()Lcom/google/android/gms/internal/ads/zzhmk;

    move-result-object v2

    const-string v10, "HMAC_SHA512_128BITTAG"

    .line 34
    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhmh;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhmh;-><init>([B)V

    .line 35
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhmh;->zza(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 36
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhmh;->zzb(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 37
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhmh;->zzc(Lcom/google/android/gms/internal/ads/zzhmj;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 38
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhmh;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhmh;->zze()Lcom/google/android/gms/internal/ads/zzhmk;

    move-result-object v2

    const-string v5, "HMAC_SHA512_128BITTAG_RAW"

    .line 40
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhmh;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhmh;-><init>([B)V

    .line 41
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhmh;->zza(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 42
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmh;->zzb(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 43
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhmh;->zzc(Lcom/google/android/gms/internal/ads/zzhmj;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 44
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhmh;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhmh;->zze()Lcom/google/android/gms/internal/ads/zzhmk;

    move-result-object v2

    const-string v5, "HMAC_SHA512_256BITTAG"

    .line 46
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhmh;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhmh;-><init>([B)V

    .line 47
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhmh;->zza(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 48
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhmh;->zzb(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 49
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhmh;->zzc(Lcom/google/android/gms/internal/ads/zzhmj;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 50
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhmh;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhmh;->zze()Lcom/google/android/gms/internal/ads/zzhmk;

    move-result-object v2

    const-string v4, "HMAC_SHA512_256BITTAG_RAW"

    .line 52
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMAC_SHA512_512BITTAG"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhmx;->zzb:Lcom/google/android/gms/internal/ads/zzhmk;

    .line 53
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhmh;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhmh;-><init>([B)V

    .line 54
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhmh;->zza(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 55
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhmh;->zzb(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 56
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhmh;->zzc(Lcom/google/android/gms/internal/ads/zzhmj;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 57
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhmh;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhmh;->zze()Lcom/google/android/gms/internal/ads/zzhmk;

    move-result-object v2

    const-string v3, "HMAC_SHA512_512BITTAG_RAW"

    .line 59
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkc;->zzd(Ljava/util/Map;)V

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjx;->zza()Lcom/google/android/gms/internal/ads/zzhjx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhmg;->zzf:Lcom/google/android/gms/internal/ads/zzhjb;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhmk;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjx;->zzb(Lcom/google/android/gms/internal/ads/zzhjb;Ljava/lang/Class;)V

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjz;->zza()Lcom/google/android/gms/internal/ads/zzhjz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhmg;->zze:Lcom/google/android/gms/internal/ads/zzhjy;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjz;->zzb(Lcom/google/android/gms/internal/ads/zzhjy;Ljava/lang/Class;)V

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhmg;->zzd:Lcom/google/android/gms/internal/ads/zzhba;

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhjc;->zzf(Lcom/google/android/gms/internal/ads/zzhba;IZ)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
