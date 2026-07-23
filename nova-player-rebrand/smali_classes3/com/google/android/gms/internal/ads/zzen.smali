.class final synthetic Lcom/google/android/gms/internal/ads/zzen;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeo;

.field private final synthetic zzb:Landroid/content/Context;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeo;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzen;->zza:Lcom/google/android/gms/internal/ads/zzeo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzen;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzen;->zza:Lcom/google/android/gms/internal/ads/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzep;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzen;->zzb:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzep;->zzd(Landroid/content/Context;)V

    return-void
.end method
