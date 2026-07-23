.class final synthetic Lcom/google/android/gms/internal/ads/zzccp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzccq;

.field private final synthetic zzb:Landroid/content/Context;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzccq;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccp;->zza:Lcom/google/android/gms/internal/ads/zzccq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccp;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccp;->zza:Lcom/google/android/gms/internal/ads/zzccq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccp;->zzb:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccq;->zzp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
