.class public final Lcom/google/android/gms/internal/ads/zzcml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcmc;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcmc;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzcml;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcml;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcml;-><init>(Lcom/google/android/gms/internal/ads/zzcmc;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method

.method public static final zzc()Lcom/google/android/gms/internal/ads/zzfzh;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmk;->zzc()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzj;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzfzh;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcml;->zzc()Lcom/google/android/gms/internal/ads/zzfzh;

    move-result-object v0

    return-object v0
.end method
