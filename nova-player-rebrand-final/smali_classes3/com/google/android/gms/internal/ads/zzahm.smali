.class abstract Lcom/google/android/gms/internal/ads/zzahm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzagh;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzagh;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zza:Lcom/google/android/gms/internal/ads/zzagh;

    return-void
.end method


# virtual methods
.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzer;)Z
.end method

.method protected abstract zzb(Lcom/google/android/gms/internal/ads/zzer;J)Z
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzer;J)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahm;->zza(Lcom/google/android/gms/internal/ads/zzer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzahm;->zzb(Lcom/google/android/gms/internal/ads/zzer;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
