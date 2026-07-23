.class final synthetic Lcom/google/android/gms/internal/ads/zzabq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzabs;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzabs;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabq;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabq;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzabs;->zza:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzB()Lcom/google/android/gms/internal/ads/zzado;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzado;->zzc()V

    return-void
.end method
