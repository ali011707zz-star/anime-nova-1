.class final synthetic Lcom/google/android/gms/internal/ads/zzcds;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcdu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcdu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zza:Lcom/google/android/gms/internal/ads/zzcdu;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zza:Lcom/google/android/gms/internal/ads/zzcdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdu;->zzx()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
