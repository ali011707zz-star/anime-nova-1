.class final synthetic Lcom/google/android/gms/internal/ads/zzade;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzadl;

.field private final synthetic zzb:J

.field private final synthetic zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzadl;JI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzade;->zza:Lcom/google/android/gms/internal/ads/zzadl;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzade;->zzb:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzade;->zzc:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzade;->zza:Lcom/google/android/gms/internal/ads/zzadl;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzade;->zzb:J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzade;->zzc:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadl;->zzo(JI)V

    return-void
.end method
