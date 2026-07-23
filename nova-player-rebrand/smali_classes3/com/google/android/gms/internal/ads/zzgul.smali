.class public abstract Lcom/google/android/gms/internal/ads/zzgul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field zza:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zza()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgul;->zza:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgtm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgul;->zza:Ljava/util/Map;

    :cond_0
    return-object v0
.end method
