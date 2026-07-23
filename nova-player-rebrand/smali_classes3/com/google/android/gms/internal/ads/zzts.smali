.class final synthetic Lcom/google/android/gms/internal/ads/zzts;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgru;


# instance fields
.field private final synthetic zza:I


# direct methods
.method synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zza:I

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzts;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zztv;->zzv(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
