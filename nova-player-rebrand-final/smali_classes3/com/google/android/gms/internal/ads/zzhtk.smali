.class final synthetic Lcom/google/android/gms/internal/ads/zzhtk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhll;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhtk;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhtk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhtk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhtk;->zza:Lcom/google/android/gms/internal/ads/zzhtk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhtm;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Ljava/math/BigInteger;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhtv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhtv;-><init>([B)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtw;->zza:Lcom/google/android/gms/internal/ads/zzhtw;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhtv;->zzd(Lcom/google/android/gms/internal/ads/zzhtw;)Lcom/google/android/gms/internal/ads/zzhtv;

    const/16 v1, 0xc00

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhtv;->zza(I)Lcom/google/android/gms/internal/ads/zzhtv;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhty;->zza:Ljava/math/BigInteger;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhtv;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhtv;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtx;->zzd:Lcom/google/android/gms/internal/ads/zzhtx;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhtv;->zzc(Lcom/google/android/gms/internal/ads/zzhtx;)Lcom/google/android/gms/internal/ads/zzhtv;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhtv;->zze()Lcom/google/android/gms/internal/ads/zzhty;

    move-result-object v0

    return-object v0
.end method
