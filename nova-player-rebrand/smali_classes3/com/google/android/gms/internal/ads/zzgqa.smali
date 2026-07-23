.class final synthetic Lcom/google/android/gms/internal/ads/zzgqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgqf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgqf;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqa;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    return-void
.end method


# virtual methods
.method public final synthetic binderDied()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqa;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqf;->zzd()V

    return-void
.end method
