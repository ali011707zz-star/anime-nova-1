.class final synthetic Lcom/google/android/gms/internal/ads/zzeiz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzejf;

.field private final synthetic zzb:Lcom/google/android/gms/ads/internal/overlay/zzm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/ads/internal/overlay/zzm;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiz;->zza:Lcom/google/android/gms/internal/ads/zzejf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeiz;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzm;

    return-void
.end method


# virtual methods
.method public final synthetic onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiz;->zza:Lcom/google/android/gms/internal/ads/zzejf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeiz;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzejf;->zzn(Lcom/google/android/gms/ads/internal/overlay/zzm;Landroid/content/DialogInterface;)V

    return-void
.end method
