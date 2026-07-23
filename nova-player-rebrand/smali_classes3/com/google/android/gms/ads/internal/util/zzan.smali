.class final synthetic Lcom/google/android/gms/ads/internal/util/zzan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/internal/util/zzat;

.field private final synthetic zzb:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/util/zzat;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzan;->zza:Lcom/google/android/gms/ads/internal/util/zzat;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzan;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzan;->zza:Lcom/google/android/gms/ads/internal/util/zzat;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzan;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzat;->zzj(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
