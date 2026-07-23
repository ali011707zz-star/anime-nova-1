.class final synthetic Lcom/google/android/gms/internal/ads/zzeja;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzejf;

.field private final synthetic zzb:Landroid/app/Activity;

.field private final synthetic zzc:Lcom/google/android/gms/ads/internal/overlay/zzm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzejf;Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zzm;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zza:Lcom/google/android/gms/internal/ads/zzejf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzb:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzc:Lcom/google/android/gms/ads/internal/overlay/zzm;

    return-void
.end method


# virtual methods
.method public final synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zza:Lcom/google/android/gms/internal/ads/zzejf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzb:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzc:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzejf;->zzo(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zzm;Landroid/content/DialogInterface;I)V

    return-void
.end method
