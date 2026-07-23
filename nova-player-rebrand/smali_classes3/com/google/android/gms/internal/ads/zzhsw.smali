.class public abstract Lcom/google/android/gms/internal/ads/zzhsw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhku;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhku;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhbq;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzhba;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzhjy;

.field private static final zzg:Lcom/google/android/gms/internal/ads/zzhjb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsu;->zza:Lcom/google/android/gms/internal/ads/zzhsu;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhsr;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhbr;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsw;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsv;->zza:Lcom/google/android/gms/internal/ads/zzhsv;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhsx;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhbs;

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsw;->zzc:Lcom/google/android/gms/internal/ads/zzhku;

    const-string v0, "type.googleapis.com/google.crypto.tink.Ed25519PrivateKey"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpp;->zzg()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhjl;->zzf(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidk;)Lcom/google/android/gms/internal/ads/zzhbq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsw;->zzd:Lcom/google/android/gms/internal/ads/zzhbq;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zzd:Lcom/google/android/gms/internal/ads/zzhqb;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpr;->zzg()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.Ed25519PublicKey"

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhjl;->zze(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzidk;)Lcom/google/android/gms/internal/ads/zzhba;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsw;->zze:Lcom/google/android/gms/internal/ads/zzhba;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhst;->zza:Lcom/google/android/gms/internal/ads/zzhst;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsw;->zzf:Lcom/google/android/gms/internal/ads/zzhjy;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhss;->zza:Lcom/google/android/gms/internal/ads/zzhss;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsw;->zzg:Lcom/google/android/gms/internal/ads/zzhjb;

    return-void
.end method

.method public static zza(Z)V
    .locals 5

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhvm;->$r8$clinit:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkg;->zza()Lcom/google/android/gms/internal/ads/zzhkg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhvm;->zza(Lcom/google/android/gms/internal/ads/zzhkg;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkc;->zza()Lcom/google/android/gms/internal/ads/zzhkc;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsp;->zza:Lcom/google/android/gms/internal/ads/zzhsp;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhsq;->zzb(Lcom/google/android/gms/internal/ads/zzhsp;)Lcom/google/android/gms/internal/ads/zzhsq;

    move-result-object v2

    const-string v3, "ED25519"

    .line 7
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsp;->zzd:Lcom/google/android/gms/internal/ads/zzhsp;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhsq;->zzb(Lcom/google/android/gms/internal/ads/zzhsp;)Lcom/google/android/gms/internal/ads/zzhsq;

    move-result-object v3

    const-string v4, "ED25519_RAW"

    .line 8
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhsq;->zzb(Lcom/google/android/gms/internal/ads/zzhsp;)Lcom/google/android/gms/internal/ads/zzhsq;

    move-result-object v2

    const-string v3, "ED25519WithRawOutput"

    .line 9
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkc;->zzd(Ljava/util/Map;)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjx;->zza()Lcom/google/android/gms/internal/ads/zzhjx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsw;->zzg:Lcom/google/android/gms/internal/ads/zzhjb;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhsq;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjx;->zzb(Lcom/google/android/gms/internal/ads/zzhjb;Ljava/lang/Class;)V

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjz;->zza()Lcom/google/android/gms/internal/ads/zzhjz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsw;->zzf:Lcom/google/android/gms/internal/ads/zzhjy;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjz;->zzb(Lcom/google/android/gms/internal/ads/zzhjy;Ljava/lang/Class;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsw;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsw;->zzc:Lcom/google/android/gms/internal/ads/zzhku;

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsw;->zzd:Lcom/google/android/gms/internal/ads/zzhbq;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhjc;->zzb(Lcom/google/android/gms/internal/ads/zzhba;Z)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsw;->zze:Lcom/google/android/gms/internal/ads/zzhba;

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhjc;->zzb(Lcom/google/android/gms/internal/ads/zzhba;Z)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering AES GCM SIV is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
