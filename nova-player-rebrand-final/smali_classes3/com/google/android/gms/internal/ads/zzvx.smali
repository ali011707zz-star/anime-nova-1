.class public final Lcom/google/android/gms/internal/ads/zzvx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzvw;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzamd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzafa;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzhg;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaly;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaly;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zzb:Lcom/google/android/gms/internal/ads/zzamd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvw;

    .line 2
    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/ads/zzvw;-><init>(Lcom/google/android/gms/internal/ads/zzafa;Lcom/google/android/gms/internal/ads/zzamd;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvx;->zza:Lcom/google/android/gms/internal/ads/zzvw;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzvw;->zza(Lcom/google/android/gms/internal/ads/zzha;)V

    return-void
.end method
