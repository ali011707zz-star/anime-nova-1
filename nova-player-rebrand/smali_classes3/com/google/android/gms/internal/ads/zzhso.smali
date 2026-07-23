.class public abstract Lcom/google/android/gms/internal/ads/zzhso;
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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsl;->zza:Lcom/google/android/gms/internal/ads/zzhsl;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhsi;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhbr;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhso;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsn;->zza:Lcom/google/android/gms/internal/ads/zzhsn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhsk;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhbs;

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhso;->zzc:Lcom/google/android/gms/internal/ads/zzhku;

    const-string v0, "type.googleapis.com/google.crypto.tink.EcdsaPrivateKey"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpi;->zzg()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhjl;->zzf(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidk;)Lcom/google/android/gms/internal/ads/zzhbq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhso;->zzd:Lcom/google/android/gms/internal/ads/zzhbq;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zzd:Lcom/google/android/gms/internal/ads/zzhqb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpk;->zzi()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.EcdsaPublicKey"

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhjl;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzidk;)Lcom/google/android/gms/internal/ads/zzhba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhso;->zze:Lcom/google/android/gms/internal/ads/zzhba;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsm;->zza:Lcom/google/android/gms/internal/ads/zzhsm;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhso;->zzf:Lcom/google/android/gms/internal/ads/zzhjb;

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/zzhso;->zzg:I

    return-void
.end method

.method public static zza(Z)V
    .locals 8

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzhso;->zzg:I

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhvd;->$r8$clinit:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkg;->zza()Lcom/google/android/gms/internal/ads/zzhkg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhvd;->zza(Lcom/google/android/gms/internal/ads/zzhkg;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkc;->zza()Lcom/google/android/gms/internal/ads/zzhkc;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ECDSA_P256"

    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhtm;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P256_IEEE_P1363"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhtm;->zzd:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 8
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhsb;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhsb;-><init>([B)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhsd;->zza:Lcom/google/android/gms/internal/ads/zzhsd;

    .line 9
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhsb;->zzc(Lcom/google/android/gms/internal/ads/zzhsd;)Lcom/google/android/gms/internal/ads/zzhsb;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhsc;->zza:Lcom/google/android/gms/internal/ads/zzhsc;

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhsb;->zzb(Lcom/google/android/gms/internal/ads/zzhsc;)Lcom/google/android/gms/internal/ads/zzhsb;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhse;->zza:Lcom/google/android/gms/internal/ads/zzhse;

    .line 11
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhsb;->zza(Lcom/google/android/gms/internal/ads/zzhse;)Lcom/google/android/gms/internal/ads/zzhsb;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhsf;->zzd:Lcom/google/android/gms/internal/ads/zzhsf;

    .line 12
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhsb;->zzd(Lcom/google/android/gms/internal/ads/zzhsf;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhsb;->zze()Lcom/google/android/gms/internal/ads/zzhsg;

    move-result-object v2

    const-string v4, "ECDSA_P256_RAW"

    .line 14
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P256_IEEE_P1363_WITHOUT_PREFIX"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhtm;->zzf:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 15
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P384"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhtm;->zzb:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 16
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P384_IEEE_P1363"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhtm;->zze:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 17
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhsb;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhsb;-><init>([B)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhsd;->zzc:Lcom/google/android/gms/internal/ads/zzhsd;

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhsb;->zzc(Lcom/google/android/gms/internal/ads/zzhsd;)Lcom/google/android/gms/internal/ads/zzhsb;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhsc;->zzb:Lcom/google/android/gms/internal/ads/zzhsc;

    .line 19
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhsb;->zzb(Lcom/google/android/gms/internal/ads/zzhsc;)Lcom/google/android/gms/internal/ads/zzhsb;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhse;->zzb:Lcom/google/android/gms/internal/ads/zzhse;

    .line 20
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhsb;->zza(Lcom/google/android/gms/internal/ads/zzhse;)Lcom/google/android/gms/internal/ads/zzhsb;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzhsf;->zza:Lcom/google/android/gms/internal/ads/zzhsf;

    .line 21
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhsb;->zzd(Lcom/google/android/gms/internal/ads/zzhsf;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhsb;->zze()Lcom/google/android/gms/internal/ads/zzhsg;

    move-result-object v2

    const-string v7, "ECDSA_P384_SHA512"

    .line 23
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhsb;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzhsb;-><init>([B)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhsd;->zzb:Lcom/google/android/gms/internal/ads/zzhsd;

    .line 24
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhsb;->zzc(Lcom/google/android/gms/internal/ads/zzhsd;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 25
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzhsb;->zzb(Lcom/google/android/gms/internal/ads/zzhsc;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 26
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzhsb;->zza(Lcom/google/android/gms/internal/ads/zzhse;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 27
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzhsb;->zzd(Lcom/google/android/gms/internal/ads/zzhsf;)Lcom/google/android/gms/internal/ads/zzhsb;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhsb;->zze()Lcom/google/android/gms/internal/ads/zzhsg;

    move-result-object v2

    const-string v3, "ECDSA_P384_SHA384"

    .line 29
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P521"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhtm;->zzc:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 30
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECDSA_P521_IEEE_P1363"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhtm;->zzg:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 31
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkc;->zzd(Ljava/util/Map;)V

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhso;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhso;->zzc:Lcom/google/android/gms/internal/ads/zzhku;

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjx;->zza()Lcom/google/android/gms/internal/ads/zzhjx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhso;->zzf:Lcom/google/android/gms/internal/ads/zzhjb;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhsg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjx;->zzb(Lcom/google/android/gms/internal/ads/zzhjb;Ljava/lang/Class;)V

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhso;->zzd:Lcom/google/android/gms/internal/ads/zzhbq;

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhjc;->zzf(Lcom/google/android/gms/internal/ads/zzhba;IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhso;->zze:Lcom/google/android/gms/internal/ads/zzhba;

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzhjc;->zzf(Lcom/google/android/gms/internal/ads/zzhba;IZ)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use ECDSA in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
