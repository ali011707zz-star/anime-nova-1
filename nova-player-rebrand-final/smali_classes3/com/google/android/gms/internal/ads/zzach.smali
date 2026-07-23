.class final synthetic Lcom/google/android/gms/internal/ads/zzach;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzach;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    return-void
.end method


# virtual methods
.method public final synthetic execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzach;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(Ljava/lang/Runnable;)Z

    return-void
.end method
