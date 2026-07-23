.class public final Lcom/google/android/gms/internal/ads/zzeau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeau;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzeau;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeau;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzeau;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzeat;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdje;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdje;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdje;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeau;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzikv;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeat;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmk;->zzc()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object v1

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeau;->zzc(Lcom/google/android/gms/internal/ads/zzeat;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdje;

    move-result-object v0

    return-object v0
.end method
