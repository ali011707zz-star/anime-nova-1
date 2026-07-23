.class final synthetic Lcom/google/android/gms/internal/ads/zzdbm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdhc;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzdbm;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdbm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbm;->zza:Lcom/google/android/gms/internal/ads/zzdbm;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdbv;

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfkm;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdbv;->zzj(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
