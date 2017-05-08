package poc.rubiconred.fusioncloud.ci.util.core.builder;

import poc.rubiconred.fusioncloud.ci.util.core.Graph;

public class GraphBuilder {

  private Graph graph;

  public GraphBuilder() {
    graph = new Graph();
  }

  // Start the Graph DSL with this method.
  public static GraphBuilder Graph() {
    return new GraphBuilder();
  }

  // Start the edge building with this method.
  public EdgeBuilder edge() {
    EdgeBuilder builder = new EdgeBuilder(this);

    getGraph().addEdge(builder.edge);

    return builder;
  }
  
  public GraphBuilder connect() {
    // assuming graph building has finished, lets join vertices together
    graph.connectNode();
    return this;
  }

  public Graph getGraph() {    
    return graph;
  }

  public void printGraph() {
    Graph.printGraph(graph);
  }
}