.class public abstract Lcom/google/android/gms/internal/ads/zzhus;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhku;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhku;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhbq;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzhba;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzhjb;

.field private static final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhup;->zza:Lcom/google/android/gms/internal/ads/zzhup;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhum;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhbr;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhus;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhur;->zza:Lcom/google/android/gms/internal/ads/zzhur;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhuo;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhbs;

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhus;->zzc:Lcom/google/android/gms/internal/ads/zzhku;

    const-string v0, "type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhro;->zzl()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhjl;->zzf(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidk;)Lcom/google/android/gms/internal/ads/zzhbq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhus;->zzd:Lcom/google/android/gms/internal/ads/zzhbq;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zzd:Lcom/google/android/gms/internal/ads/zzhqb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhrq;->zzi()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.RsaSsaPssPublicKey"

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhjl;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzidk;)Lcom/google/android/gms/internal/ads/zzhba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhus;->zze:Lcom/google/android/gms/internal/ads/zzhba;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhuq;->zza:Lcom/google/android/gms/internal/ads/zzhuq;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhus;->zzf:Lcom/google/android/gms/internal/ads/zzhjb;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzhus;->zzg:I

    return-void
.end method

.method public static zza(Z)V
    .locals 10

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzhus;->zzg:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhwg;->$r8$clinit:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkg;->zza()Lcom/google/android/gms/internal/ads/zzhkg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhwg;->zza(Lcom/google/android/gms/internal/ads/zzhkg;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkc;->zza()Lcom/google/android/gms/internal/ads/zzhkc;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhuk;->zza:Ljava/math/BigInteger;

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhuh;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhuh;-><init>([B)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhui;->zza:Lcom/google/android/gms/internal/ads/zzhui;

    .line 9
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhuh;->zzd(Lcom/google/android/gms/internal/ads/zzhui;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhuh;->zze(Lcom/google/android/gms/internal/ads/zzhui;)Lcom/google/android/gms/internal/ads/zzhuh;

    const/16 v5, 0x20

    .line 11
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhuh;->zzf(I)Lcom/google/android/gms/internal/ads/zzhuh;

    const/16 v6, 0xc00

    .line 12
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhuh;->zza(I)Lcom/google/android/gms/internal/ads/zzhuh;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhuk;->zza:Ljava/math/BigInteger;

    .line 13
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhuh;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhuh;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhuj;->zza:Lcom/google/android/gms/internal/ads/zzhuj;

    .line 14
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhuh;->zzc(Lcom/google/android/gms/internal/ads/zzhuj;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhuh;->zzg()Lcom/google/android/gms/internal/ads/zzhuk;

    move-result-object v2

    const-string v9, "RSA_SSA_PSS_3072_SHA256_F4"

    .line 16
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhuh;

    .line 17
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhuh;-><init>([B)V

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhuh;->zzd(Lcom/google/android/gms/internal/ads/zzhui;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 19
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhuh;->zze(Lcom/google/android/gms/internal/ads/zzhui;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 20
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhuh;->zzf(I)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 21
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhuh;->zza(I)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 22
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhuh;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhuh;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhuj;->zzd:Lcom/google/android/gms/internal/ads/zzhuj;

    .line 23
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhuh;->zzc(Lcom/google/android/gms/internal/ads/zzhuj;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhuh;->zzg()Lcom/google/android/gms/internal/ads/zzhuk;

    move-result-object v2

    const-string v5, "RSA_SSA_PSS_3072_SHA256_F4_RAW"

    .line 25
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RSA_SSA_PSS_3072_SHA256_SHA256_32_F4"

    .line 26
    sget-object v5, Lcom/google/android/gms/internal/ads/zzhtm;->zzk:Lcom/google/android/gms/internal/ads/zzhuk;

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhuh;

    .line 27
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhuh;-><init>([B)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhui;->zzc:Lcom/google/android/gms/internal/ads/zzhui;

    .line 28
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhuh;->zzd(Lcom/google/android/gms/internal/ads/zzhui;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 29
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhuh;->zze(Lcom/google/android/gms/internal/ads/zzhui;)Lcom/google/android/gms/internal/ads/zzhuh;

    const/16 v6, 0x40

    .line 30
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhuh;->zzf(I)Lcom/google/android/gms/internal/ads/zzhuh;

    const/16 v9, 0x1000

    .line 31
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhuh;->zza(I)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 32
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhuh;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 33
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzhuh;->zzc(Lcom/google/android/gms/internal/ads/zzhuj;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhuh;->zzg()Lcom/google/android/gms/internal/ads/zzhuk;

    move-result-object v2

    const-string v8, "RSA_SSA_PSS_4096_SHA512_F4"

    .line 35
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhuh;

    .line 36
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhuh;-><init>([B)V

    .line 37
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhuh;->zzd(Lcom/google/android/gms/internal/ads/zzhui;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 38
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhuh;->zze(Lcom/google/android/gms/internal/ads/zzhui;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 39
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhuh;->zzf(I)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 40
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzhuh;->zza(I)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 41
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzhuh;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 42
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhuh;->zzc(Lcom/google/android/gms/internal/ads/zzhuj;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhuh;->zzg()Lcom/google/android/gms/internal/ads/zzhuk;

    move-result-object v2

    const-string v3, "RSA_SSA_PSS_4096_SHA512_F4_RAW"

    .line 44
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RSA_SSA_PSS_4096_SHA512_SHA512_64_F4"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhtm;->zzl:Lcom/google/android/gms/internal/ads/zzhuk;

    .line 45
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkc;->zzd(Ljava/util/Map;)V

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhus;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhus;->zzc:Lcom/google/android/gms/internal/ads/zzhku;

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjx;->zza()Lcom/google/android/gms/internal/ads/zzhjx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhus;->zzf:Lcom/google/android/gms/internal/ads/zzhjb;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhuk;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjx;->zzb(Lcom/google/android/gms/internal/ads/zzhjb;Ljava/lang/Class;)V

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhus;->zzd:Lcom/google/android/gms/internal/ads/zzhbq;

    const/4 v2, 0x1

    .line 52
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhjc;->zzf(Lcom/google/android/gms/internal/ads/zzhba;IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhus;->zze:Lcom/google/android/gms/internal/ads/zzhba;

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhjc;->zzf(Lcom/google/android/gms/internal/ads/zzhba;IZ)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use RSA SSA PSS in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
