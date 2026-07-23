.class public final Lcom/google/android/gms/internal/ads/zzdcw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcw;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzdcw;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdcw;-><init>(Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method

.method public static zzd(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdcv;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdcv;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdcv;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcw;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zziks;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziks;->zzc()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdcv;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdcv;-><init>(Ljava/util/Set;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdcw;->zza()Lcom/google/android/gms/internal/ads/zzdcv;

    move-result-object v0

    return-object v0
.end method
