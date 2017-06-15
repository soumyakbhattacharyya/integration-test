package poc.rubiconred.fusioncloud.ci.util.core.builder;

import poc.rubiconred.fusioncloud.ci.util.core.Edge;
import poc.rubiconred.fusioncloud.ci.util.core.Vertex;
import poc.rubiconred.fusioncloud.ci.util.core.DefaultVertex;

public class EdgeBuilder {

  Edge edge;

  // Keep a back reference to the Graph Builder.
  GraphBuilder gBuilder;

  public EdgeBuilder(GraphBuilder gBuilder) {
    this.gBuilder = gBuilder;
    edge = new Edge();
  }

  public EdgeBuilder whichIsTheRoot(String lbl) {
    int index = gBuilder.getGraph().getVertices().indexOf(new DefaultVertex(lbl));
    gBuilder.getGraph().setRootNode(gBuilder.getGraph().getVertices().get(index));
    return this;
  }

  public EdgeBuilder from(String lbl) {
    DefaultVertex v = new DefaultVertex(lbl);
    if (!gBuilder.getGraph().getVertices().contains(v)) {
      edge.setFromVertex(v);
      gBuilder.getGraph().addVertice(v);
    } else {
      int index = gBuilder.getGraph().getVertices().indexOf(v);
      Vertex vExisting = gBuilder.getGraph().getVertices().get(index);
      edge.setFromVertex(vExisting);
    }
    return this;
  }

  public EdgeBuilder to(String lbl) {
    DefaultVertex v = new DefaultVertex(lbl);
    if (!gBuilder.getGraph().getVertices().contains(v)) {
      edge.setToVertex(v);
      gBuilder.getGraph().addVertice(v);
    } else {
      int index = gBuilder.getGraph().getVertices().indexOf(v);
      Vertex vExisting = gBuilder.getGraph().getVertices().get(index);
      edge.setToVertex(vExisting);
    }
    return this;
  }

  public GraphBuilder weight(Double d) {
    edge.setWeight(d);
    return gBuilder;
  }

}