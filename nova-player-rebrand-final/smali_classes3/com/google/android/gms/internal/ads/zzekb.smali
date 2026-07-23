.class public final Lcom/google/android/gms/internal/ads/zzekb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfsj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsj;Lcom/google/android/gms/internal/ads/zzfsl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekb;->zza:Lcom/google/android/gms/internal/ads/zzfsj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzekb;->zzb:Lcom/google/android/gms/internal/ads/zzfsl;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsj;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekb;->zza:Lcom/google/android/gms/internal/ads/zzfsj;

    return-object v0
.end method

.method public final zzb()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekb;->zzb:Lcom/google/android/gms/internal/ads/zzfsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsl;->zzi()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfsm;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
