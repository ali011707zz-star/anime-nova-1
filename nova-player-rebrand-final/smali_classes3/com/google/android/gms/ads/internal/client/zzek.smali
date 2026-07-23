.class public final Lcom/google/android/gms/ads/internal/client/zzek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/util/List;

.field private final zzc:Ljava/util/Set;

.field private final zzd:Landroid/os/Bundle;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:I

.field private final zzh:Ljava/util/Set;

.field private final zzi:Landroid/os/Bundle;

.field private final zzj:Ljava/util/Set;

.field private final zzk:Z

.field private final zzl:Ljava/lang/String;

.field private final zzm:I

.field private zzn:J

.field private zzo:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzej;Lcom/google/android/gms/internal/ads/zzfva;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzn:J

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzo:J

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzx()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzy()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzb:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzr()Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzc:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzs()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzd:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzt()Ljava/util/HashMap;

    move-result-object p2

    .line 2
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzz()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zze:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzA()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzf:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzB()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzg:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzu()Ljava/util/HashSet;

    move-result-object p2

    .line 3
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzh:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzv()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzi:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzw()Ljava/util/HashSet;

    move-result-object p2

    .line 4
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzj:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzC()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzk:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzD()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzE()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzm:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzej;->zzF()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzo:J

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzb:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final zzc()Ljava/util/Set;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzc:Ljava/util/Set;

    return-object v0
.end method

.method public final zzd(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzd:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzex;->zzb()Lcom/google/android/gms/ads/internal/client/zzex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzex;->zzp()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzh:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTestDeviceIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzi()Landroid/os/Bundle;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzd:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzj()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzg:I

    return v0
.end method

.method public final zzk()Landroid/os/Bundle;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzi:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzl()Ljava/util/Set;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzj:Ljava/util/Set;

    return-object v0
.end method

.method public final zzm()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzk:Z

    return v0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzo()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzm:I

    return v0
.end method

.method public final zzp(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzn:J

    return-void
.end method

.method public final zzq()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzn:J

    return-wide v0
.end method

.method public final zzr()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzek;->zzo:J

    return-wide v0
.end method
