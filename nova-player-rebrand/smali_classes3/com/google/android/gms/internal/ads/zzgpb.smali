.class final synthetic Lcom/google/android/gms/internal/ads/zzgpb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgpn;


# instance fields
.field private final synthetic zza:Landroid/os/Bundle;


# direct methods
.method synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpb;->zza:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/google/android/gms/internal/ads/zzgpo;->$r8$clinit:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpb;->zza:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
