.class public final Lcom/google/android/gms/internal/ads/zzcuu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcue;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuu;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcue;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzcuu;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcuu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcuu;-><init>(Lcom/google/android/gms/internal/ads/zzcue;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuu;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcwa;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwa;->zza()Lcom/google/android/gms/internal/ads/zzdeg;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdje;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcuc;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcuc;-><init>(Lcom/google/android/gms/internal/ads/zzdeg;)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdje;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
