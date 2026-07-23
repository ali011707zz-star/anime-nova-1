.class final synthetic Lcom/google/android/gms/internal/ads/zzcwt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgzl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgzl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwt;->zza:Lcom/google/android/gms/internal/ads/zzgzl;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecr;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzecr;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwt;->zza:Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzl;->zza(Ljava/lang/Throwable;)V

    return-void
.end method
