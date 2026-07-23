.class final Lcom/google/ads/interactivemedia/v3/impl/zzbf;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzby;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzbg;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbf;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->iconsView:Lcom/google/ads/interactivemedia/v3/impl/data/IconsViewData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/IconsViewData;->icons()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptMsgData;->iconsView:Lcom/google/ads/interactivemedia/v3/impl/data/IconsViewData;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/IconsViewData;->icons()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/impl/data/IconData;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbf;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbg;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzq()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/data/AdUiImpl;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzp()Lcom/google/ads/interactivemedia/v3/impl/zzbv;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/AdUiImpl;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbv;Ljava/util/List;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzg(Lcom/google/ads/interactivemedia/v3/api/zza;)V

    return-void
.end method
